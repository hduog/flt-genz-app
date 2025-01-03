// image_grid_widget.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/service/profile/profile_service.dart';
import 'package:flutter_application_1/view-models/profile/profile.prvd.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ImageListPage extends ConsumerStatefulWidget {
  const ImageListPage({super.key});
  @override
  ConsumerState<ImageListPage> createState() => _ImageListPage();
}

class _ImageListPage extends ConsumerState<ImageListPage> {
  @override
  void initState() {
    super.initState();
    fetchProfile();
  }

  Future<void> fetchProfile() async {
    final profileService = ProfileService();
    final profile = await profileService.getMyProfile();
    ref.read(profileProvider.notifier).setMyProfile(profile);
  }

  @override
  Widget build(BuildContext context) {
    final profileInfo = ref.watch(profileProvider);
    return Scaffold(
      backgroundColor: colorBackground,
      appBar: AppBar(
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
          'Danh sách ảnh',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: colorBackground,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
        itemCount: profileInfo?.image?.length ??
            0, // If images is null, use 0 as the item count
        itemBuilder: (context, index) {
          final photo = profileInfo!.image?[index];
          if (photo == null) {
            return const SizedBox.shrink();
          }
          return Image.network(
            '${Constants.awsUrl}${photo.path}',
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
