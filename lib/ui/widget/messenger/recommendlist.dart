import 'package:flutter/material.dart';

class RecommendList extends StatelessWidget {
  final VoidCallback onTap;

  const RecommendList({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          InkWell(
            onTap: onTap, 
            splashColor: Colors.blue.withOpacity(0.3), 
            highlightColor: Colors.blue.withOpacity(0.1), 
            child: CircleAvatar(
              radius: 27,
              backgroundImage: AssetImage('assets/images/reels-test.png'),
            ),
          ),
          const SizedBox(height: 5),
          const Text("Nguyễn Lê Huu Duy"),
        ],
      ),
    );
  }
}
