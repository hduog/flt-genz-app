import 'package:flutter_application_1/core/data/models/RoomMessageModel/OwnerRoom/OwnerRoomGet.dart';

class MessagePost {
  final String contentText;
  final String? roomId;

  MessagePost({
    required String contentText,
    this.roomId,
  }) : contentText = contentText.trim();

  Map<String, dynamic> toJson() {
    return {
      'contentText': contentText,
      'roomId': roomId ?? '',
    };
  }
}

class MessageForGet {
  final String id;
  final OwnerRoomGet owner;
  final String contentText;
  final String ownerId;

  MessageForGet({
    required this.id,
    required this.owner,
    required this.contentText,
    required this.ownerId,
  });

  factory MessageForGet.fromJson(Map<String, dynamic> json) {
    return MessageForGet(
      id: json['id'],
      owner: OwnerRoomGet.fromJson(json['owner']),
      contentText: json['contentText'],
      ownerId: json['ownerId'],
    );
  }
}