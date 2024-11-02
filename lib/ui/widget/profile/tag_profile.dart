import 'package:flutter/material.dart';

class TagProfile extends StatelessWidget {
  const TagProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey),
          ),
          child: const Text('Game', style: TextStyle(fontSize: 15)),
        ),
        const SizedBox(width: 8), // Khoảng cách giữa các Container
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey),
          ),
          child: const Text('Song', style: TextStyle(fontSize: 15)),
        ),
        const SizedBox(width: 8), // Khoảng cách giữa các Container
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey),
          ),
          child: const Text('Reading', style: TextStyle(fontSize: 15)),
        ),
      ],
    );
  }
}
