import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/data/models/FavoriteTagData/FavoriteTagData.dart';
import 'package:flutter_application_1/core/data/models/ProfileModel/FavoriteData/FavoriteData.dart';
import 'package:flutter_application_1/core/service/favorite-tag/favorite-tag_service.dart';
import 'package:flutter_application_1/core/service/profile/profile_service.dart';
import 'package:flutter_application_1/view-models/favorite-tag/favorite-tag.prvd.dart';
import 'package:flutter_application_1/view-models/profile/profile.prvd.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class EditProfileScreen extends ConsumerStatefulWidget {
  const EditProfileScreen({super.key});

  @override
  ConsumerState<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends ConsumerState<EditProfileScreen> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController nickNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController birthController = TextEditingController();
  final TextEditingController aboutMeController = TextEditingController();
  final TextEditingController avatarPathController = TextEditingController();
  final TextEditingController bannerPathController = TextEditingController();

  late List<FavoriteData> favorites = [];
  File? _avatarImage;
  File? _bannerImage;
  final ImagePicker _picker = ImagePicker();
  DateTime? selectedBirthDate;

  @override
  void initState() {
    super.initState();
    fetchProfile();
    fetchListFavorite();
  }

  Future<void> fetchProfile() async {
    final profileService = ProfileService();
    try {
      final profile = await profileService.getMyProfile();
      if (profile != null) {
        ref.read(profileProvider.notifier).setMyProfile(profile);
        setState(() {
          fullNameController.text = profile.user.fullName ?? "";
          nickNameController.text = profile.user.nickName ?? "";
          emailController.text = profile.user.email ?? "";
          phoneController.text = profile.user.phone ?? "";
          birthController.text = formatBirth(profile.user.birth) ?? "";
          aboutMeController.text = profile.user.aboutMe ?? "";
          avatarPathController.text = profile.user.avata ?? "";
          bannerPathController.text = profile.user.banner ?? "";
          favorites = profile.user.favorite?.toList() ?? [];
        });
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to fetch profile: $e')),
      );
    }
  }

  Future<void> fetchListFavorite() async {
    final featureService = FavoriteTagService();
    final listFavorite = await featureService.getAllFavoriteTags();
    if (listFavorite != null) {
      ref.read(favoriteTagProvider.notifier).setFavoriteTag(listFavorite);
    }
  }

  Future<void> _pickImage(ImageSource source, bool isAvatar) async {
    final pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        if (isAvatar) {
          _avatarImage = File(pickedFile.path);
          avatarPathController.text = pickedFile.path;
        } else {
          _bannerImage = File(pickedFile.path);
          bannerPathController.text = pickedFile.path;
        }
      });
    }
  }

  Future<void> _selectDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        selectedBirthDate = picked;
        birthController.text = DateFormat('dd/MM/yyyy').format(picked);
      });
    }
  }

  Future<void> _saveProfile() async {
    if (fullNameController.text.trim().isEmpty ||
        phoneController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Họ và tên, Số điện thoại là bắt buộc')),
      );
      return;
    }
    try {
      final profileService = ProfileService();
      String? avatarUrl;
      String? bannerUrl;
      if (_avatarImage != null)
        avatarUrl = await profileService.uploadAvatarImage(_avatarImage!);
      if (_bannerImage != null)
        bannerUrl = await profileService.uploadBannerImage(_bannerImage!);

      final updatedData = {
        "fullName": fullNameController.text,
        "nickName": nickNameController.text,
        "phone": phoneController.text,
        "email": emailController.text,
        "birth": selectedBirthDate?.toUtc().toIso8601String() ??
            (birthController.text.isNotEmpty
                ? DateFormat('dd/MM/yyyy')
                    .parse(birthController.text)
                    .toUtc()
                    .toIso8601String()
                : null),
        "aboutMe": aboutMeController.text,
        "avata": {
          "isDelete": false,
          "path": avatarUrl ?? avatarPathController.text,
        },
        "banner": {
          "isDelete": false,
          "path": bannerUrl ?? bannerPathController.text,
        },
        "favorite": favorites.map((fav) => fav.id).toList(),
      };
      final response = await profileService.patchMyProfile(updatedData);
      if (response != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Cập nhật thông tin thành công')),
        );
        await fetchProfile();
        Navigator.of(context).pop();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Không thể cập nhật thông tin')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error updating profile: $e')),
      );
    }
  }

  Future<void> _addFavorite() async {
    final listFavorite = ref.watch(favoriteTagProvider);
    if (listFavorite.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Không có mục yêu thích')),
      );
      return;
    }

    final selectedFavorite = await showDialog<FavoriteTagData>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Chọn mục yêu thích'),
          content: SizedBox(
            width: double.maxFinite,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: listFavorite.length,
              itemBuilder: (context, index) {
                final favorite = listFavorite[index];
                return ListTile(
                  title: Text(favorite.nameFavorite),
                  subtitle: Text(favorite.descriptionFavorite),
                  onTap: () {
                    Navigator.pop(context, favorite);
                  },
                );
              },
            ),
          ),
        );
      },
    );

    if (selectedFavorite != null &&
        !favorites.any((fav) => fav.id == selectedFavorite.id)) {
      setState(() {
        favorites.add(FavoriteData(
          id: selectedFavorite.id,
          nameFavorite: selectedFavorite.nameFavorite,
        ));
      });
    } else if (selectedFavorite != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Bạn đã chọn mục yêu thích này ')),
      );
    }
  }

  Widget buildTextField(String label, TextEditingController controller,
      {bool readOnly = false, VoidCallback? onTap}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        readOnly: readOnly,
        onTap: onTap,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.grey, width: 0.5),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.grey, width: 0.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.blue, width: 1.5),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.red, width: 1.5),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorBackground,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 15, 
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Chỉnh sửa thông tin',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: _saveProfile,
            child: const Text(
              'Lưu',
              style: TextStyle(
                fontSize: 16,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: colorBackground, // Màu nền nhạt
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () => _pickImage(ImageSource.gallery, false),
              child: Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(0, 2),
                    ),
                  ],
                  image: DecorationImage(
                    image: _bannerImage != null
                        ? FileImage(_bannerImage!)
                        : (bannerPathController.text.isNotEmpty
                            ? NetworkImage(
                                '${Constants.awsUrl}${bannerPathController.text}')
                            : const AssetImage(
                                'assets/images/reels-test.png')) as ImageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      'assets/icons/photo_grey.svg',
                      width: 30,
                      height: 30,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: GestureDetector(
                onTap: () => _pickImage(ImageSource.gallery, true),
                child: CircleAvatar(
                  radius: 55,
                  backgroundImage: _avatarImage != null
                      ? FileImage(_avatarImage!)
                      : (avatarPathController.text.isNotEmpty
                          ? NetworkImage(
                              '${Constants.awsUrl}${avatarPathController.text}')
                          : const AssetImage(
                              'assets/images/reels-test.png')) as ImageProvider,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black54,
                      ),
                      padding: const EdgeInsets.all(5),
                      child: SvgPicture.asset(
                        'assets/icons/photo_grey.svg',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            buildSectionTitle('Thông tin cá nhân'),
            buildTextField('Họ và tên', fullNameController),
            buildTextField('Tên gọi khác', nickNameController),
            buildTextField('Số điện thoại', phoneController),
            buildTextField('Email', emailController, readOnly: true),
            buildTextField(
              'Ngày sinh',
              birthController,
              readOnly: true,
              onTap: () => _selectDate(context),
            ),
            const SizedBox(height: 20),
            buildSectionTitle('Mục yêu thích'),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: favorites.map((favorite) {
                return Chip(
                  label: Text(favorite.nameFavorite),
                  backgroundColor: Colors.blue.shade50,
                  labelStyle: const TextStyle(color: Colors.blue),
                  deleteIcon: const Icon(Icons.close, size: 16),
                  onDeleted: () {
                    setState(() {
                      favorites.remove(favorite);
                    });
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 10),
            Center(
              child: ElevatedButton.icon(
                onPressed: _addFavorite,
                icon: const Icon(Icons.add, size: 20),
                label: const Text('Thêm mục yêu thích'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            buildSectionTitle('Giới thiệu bản thân'),
            TextField(
              controller: aboutMeController,
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Kể về bạn...',
                filled: true,
                fillColor: const Color.fromARGB(255, 255, 255, 255),
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(12), // Tạo góc bo tròn cho viền
                  borderSide: BorderSide(
                    color: Colors.blueGrey, // Màu của viền
                    width: 1.5, // Độ dày của viền
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    color: Colors
                        .blueGrey.shade200, // Màu của viền khi không có focus
                    width: 1.5,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    color: Colors.blue, // Màu của viền khi có focus
                    width: 2.0, // Độ dày viền khi focus
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
