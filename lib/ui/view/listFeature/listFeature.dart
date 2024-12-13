import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/service/features/feature_service.dart';
import 'package:flutter_application_1/ui/widget/list_feature.dart';
import 'package:flutter_application_1/view-models/feature/feature.prvd.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListFeature extends ConsumerStatefulWidget {
  const ListFeature({super.key});

  @override
  ConsumerState<ListFeature> createState() => _ListFeatureState();
}

class _ListFeatureState extends ConsumerState<ListFeature> {
  @override
  void initState() {
    super.initState();
    fetchListFeature();
  }

  Future<void> fetchListFeature() async {
    final featureService = FeatureService();
    final listFeature = await featureService.getAllFeature(ref);
    if (listFeature != null) {
      ref.read(featureProvider.notifier).setFeature(listFeature);
    }
  }

  @override
  Widget build(BuildContext context) {
    final listFeature = ref.watch(featureProvider);

    if (listFeature.isEmpty) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            const Positioned(
              left: -200,
              top: -200,
              child: Image(
                image: AssetImage('assets/images/bg-top.png'),
                width: 500,
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/logo.svg',
                          width: 50,
                          height: 50,
                        ),
                        const SizedBox(width: 10),
                        SvgPicture.asset(
                          'assets/icons/logo-string.svg',
                          width: 150,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "KHO TÍNH NĂNG",
                      style: TextStyle(
                        fontSize: 22,
                        color: colorTextHeader,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "Những tính năng giúp cải thiện sức khoẻ tinh thần",
                      style: TextStyle(color: colorTextSubPart),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 40,
                      margin: EdgeInsets.only(top: 20, bottom: 5),
                      padding: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                          border: Border.all(color: colorIconActive),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/icons/search.svg',
                                width: 25,
                                height: 25,
                              ),
                              SizedBox(width: 20),
                              SizedBox(
                                width: 200,
                                child: TextField(
                                  decoration: InputDecoration(
                                      labelText: 'Nhập tên tính năng..',
                                      border: InputBorder.none,
                                      labelStyle: TextStyle(
                                          color: colorIconActive,
                                          fontSize: 14)),
                                ),
                              ),
                            ],
                          ),
                          SvgPicture.asset(
                            'assets/icons/option-search.svg',
                            width: 25,
                            height: 25,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Sửa phần GridView
                    SizedBox(
                      height: MediaQuery.of(context).size.height *
                          0.7, // Đặt chiều cao cho GridView
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        itemBuilder: (context, index) {
                          final itemFeature = listFeature[index];
                          return FeatureCard(
                            itemFeature: itemFeature,
                          );
                        },
                        itemCount: listFeature.length, // Số lượng phần tử
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
