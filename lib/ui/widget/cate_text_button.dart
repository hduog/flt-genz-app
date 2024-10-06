import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';

class CateTextButton extends StatelessWidget {
  const CateTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: colorIconActive),
      width: 70,
      child: Text("Tất cả", style: TextStyle(color: Colors.white)),
    );
  }
}
