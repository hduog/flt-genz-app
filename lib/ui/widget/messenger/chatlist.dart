import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/data/models/RoomMessageModel/RoomMessageForGet/RoomMessageForGet.dart';

class ChatList extends StatelessWidget {
  final VoidCallback onTap;
  final RoomMessageForGet roomMessage;

  const ChatList({
    Key? key,
    required this.onTap,
    required this.roomMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        leading: ClipOval(
              child: Image.network(
                '${Constants.awsUrl}${roomMessage.avatar ?? ''}',
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
        title: Text(
          roomMessage.nameRoom ?? 'No Name',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          roomMessage.lastMessage ?? 'No messages yet',
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 12),
        ),
      ),
    );
  }
}