import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/data/models/UserModel/BasicInfoGet/BasicInfoGet.dart';

class UserAvatar extends StatelessWidget {
  final BasicInfoGet account;

  UserAvatar({required this.account});
  Color _getRandomColor(String name) {
    int firstCharCode = name.toUpperCase().codeUnitAt(0);
    Random random = Random(firstCharCode);
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  @override
  Widget build(BuildContext context) {
    return account.avata!.isNotEmpty
        ? ClipOval(
            child: Image.network(
              '${Constants.awsUrl}${account.avata}',
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
          )
        : ClipOval(
            child: Container(
              color: _getRandomColor(account.fullName),
              width: 30,
              height: 30,
              alignment: Alignment.center,
              child: Text(
                account.fullName.isNotEmpty
                    ? account.fullName[0].toUpperCase()
                    : '',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          );
  }
}
