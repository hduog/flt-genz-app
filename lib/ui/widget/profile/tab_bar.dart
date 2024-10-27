import 'package:flutter/material.dart';

class ProfileTabs extends StatelessWidget {
  const ProfileTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3, // Số lượng tabs
      child: Column(
        children: [
          TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.blueAccent,
            tabs: const [
              Tab(text: "All"),
              Tab(text: "Photos"),
              Tab(text: "Videos"),
            ],
          ),
          const SizedBox(
            height: 400, // Fixed height for TabBarView
            child: TabBarView(
              children: [
                // Directly use the GridView builder here
                GridViewBuilderWidget(),
                GridViewBuilderWidget(),
                GridViewBuilderWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class GridViewBuilderWidget extends StatelessWidget {
  const GridViewBuilderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ),
      itemCount: 28,
      itemBuilder: (context, index) {
        return Image.asset(
          'assets/images/reels-test.png',
          fit: BoxFit.cover,
        );
      },
    );
  }
}
