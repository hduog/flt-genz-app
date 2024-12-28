import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/data/models/PostModel/PostForCreate/PostForCreate.dart';
import 'package:flutter_application_1/core/service/post/post_service.dart';
import 'package:flutter_application_1/ui/widget/profile/account_avata.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_application_1/view-models/auth/user.prvd.dart';

class CreatePost extends ConsumerStatefulWidget {
  final VoidCallback? onPostCreated;
  const CreatePost({Key? key, this.onPostCreated}) : super(key: key);

  @override
  _CreatePostState createState() => _CreatePostState();
}

class _CreatePostState extends ConsumerState<CreatePost> {
  final TextEditingController _contentController = TextEditingController();
  final List<XFile> _selectedImages = [];
  final ImagePicker _picker = ImagePicker();
  String selectedPrivacy = Constants.PUBLIC;
  bool isLoading = false;
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Tự động kích hoạt bàn phím
      _focusNode.requestFocus();
    });
  }

  Future<void> _pickImage() async {
    try {
      final List<XFile>? images = await _picker.pickMultiImage();
      if (images != null && images.isNotEmpty) {
        setState(() {
          _selectedImages.addAll(images);
        });
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error picking images: $e')),
      );
    }
  }

  Future<void> _createPost(PostService postService, userInfo) async {
    if (_contentController.text.isEmpty || userInfo == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Nội dung của bạn đang trống')),
      );
      return;
    }

    setState(() => isLoading = true);

    try {
      final post = PostForCreate(
        contentText: _contentController.text,
        accountId: userInfo.id,
        permissionPostId: selectedPrivacy,
      );

      final List<File> imageFiles =
          _selectedImages.map((image) => File(image.path)).toList();

      final success = await postService.createPost(post, imageFiles, ref);

      if (success) {
        if (widget.onPostCreated != null) {
          widget.onPostCreated!();
        }
        Navigator.pop(context);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Không thể tạo bài viết')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Không thể tạo bài viết: $e')),
      );
    } finally {
      setState(() => isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final userInfo = ref.watch(userProvider);
    final postService = PostService();

    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 30),
        color: colorBackground,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    leading: UserAvatar(
                      account: userInfo!,
                      height: 40,
                      width: 40,
                    ),
                    title: Text(userInfo.fullName),
                    subtitle: PopupMenuButton<String>(
                      onSelected: (String value) =>
                          setState(() => selectedPrivacy = value),
                      initialValue: selectedPrivacy,
                      itemBuilder: (BuildContext context) => [
                        _buildPrivacyMenuItem(
                            SvgPicture.asset(
                              'assets/icons/public.svg',
                              width: 24,
                              height: 24,
                            ),
                            'Mọi người',
                            Constants.PUBLIC),
                        _buildPrivacyMenuItem(
                            SvgPicture.asset(
                              'assets/icons/group.svg',
                              width: 24,
                              height: 24,
                            ),
                            'Người theo dõi',
                            Constants.FOLLOW),
                        _buildPrivacyMenuItem(
                            SvgPicture.asset(
                              'assets/icons/lock_grey.svg',
                              width: 24,
                              height: 24,
                            ),
                            'Chỉ mình tôi',
                            Constants.PRIVATE),
                      ],
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            selectedPrivacy == Constants.PUBLIC
                                ? 'assets/icons/public.svg'
                                : selectedPrivacy == Constants.FOLLOW
                                    ? 'assets/icons/group.svg'
                                    : 'assets/icons/lock_grey.svg',
                            width: 24,
                            height: 24,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            selectedPrivacy == Constants.PUBLIC
                                ? 'Mọi người'
                                : selectedPrivacy == Constants.FOLLOW
                                    ? 'Người theo dõi'
                                    : 'Chỉ mình tôi',
                            style: const TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () => _createPost(postService, userInfo),
                    child: const Text(
                      'Đăng',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                focusNode: _focusNode,
                controller: _contentController,
                decoration: const InputDecoration(
                  hintText: 'Bạn đang suy nghĩ điều gì?',
                  border: InputBorder.none,
                ),
                maxLines: null,
              ),
            ),
            const SizedBox(height: 10),
            if (_selectedImages.isNotEmpty)
              SizedBox(
                height: 200,
                child: GridView.builder(
                  itemCount: _selectedImages.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 5.0,
                  ),
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Image.file(
                          File(_selectedImages[index].path),
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                        Positioned(
                          top: 5,
                          right: 5,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedImages.removeAt(index);
                              });
                            },
                            child: SvgPicture.asset(
                              'assets/icons/cancel_grey.svg',
                              width: 24,
                              height: 24,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            const Spacer(),
            const Divider(height: 1),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildOptionItem(
                    icon: 'upload-pic.svg',
                    text: 'Hình ảnh',
                    onTap: _pickImage,
                  ),
                  _buildOptionItem(
                    icon: 'upload-video.svg',
                    text: 'Video',
                    onTap: () {},
                  ),
                  _buildOptionItem(
                    icon: 'upload-file.svg',
                    text: 'Tệp',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  PopupMenuItem<String> _buildPrivacyMenuItem(
      Widget icon, String text, String value) {
    return PopupMenuItem<String>(
      value: value,
      child: Row(
        children: [
          icon,
          const SizedBox(width: 8),
          Text(text),
        ],
      ),
    );
  }

  Widget _buildOptionItem({
    required String icon,
    required String text,
    required Function() onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/$icon',
              width: 13,
              height: 13,
            ),
            const SizedBox(
              child: Text(" | "),
            ),
            Text(text),
          ],
        ),
      ),
    );
  }
}
