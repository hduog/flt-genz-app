import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/data/models/RoomMessageModel/MessageGet/MessageGet.dart';
import 'package:flutter_application_1/core/data/models/RoomMessageModel/OwnerRoom/OwnerRoomGet.dart';
import 'package:flutter_application_1/core/data/models/RoomMessageModel/RoomMessage.dart';
import 'package:flutter_application_1/core/service/roomMessage/AI/room_message_ai.dart';
import 'package:flutter_application_1/view-models/auth/user.prvd.dart';
import 'package:flutter_application_1/view-models/room-message/message/message.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatScreen extends ConsumerStatefulWidget {
  final String roomId;
  @override
  ConsumerState<ChatScreen> createState() => _ChatScreenState();
  const ChatScreen({
    super.key,
    required this.roomId,
  });
}

class _ChatScreenState extends ConsumerState<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final service = RoomMessageAIService();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    fetchMessageInRoom().then((_) {
      scrollToBottom();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  Future<void> fetchMessageInRoom() async {
    final data = await service.fetchMessages(widget.roomId);
    if (data == null) {
      debugPrint("No data returned from fetchMessages");
      return;
    }
    ref.read(messageInRoomProvider.notifier).setListMessage(data ?? []);
  }

  Future<void> _sendMessage() async {
    final profileInfo = ref.read(userProvider);

    final userMessage = MessageGet(
      id: DateTime.now().toIso8601String(),
      roomId: widget.roomId,
      owner: OwnerRoomGet(id: profileInfo?.id ?? ''),
      contentText: _controller.text,
      ownerId: profileInfo?.id ?? '',
    );
    ref.read(messageInRoomProvider.notifier).addMoreMessage(userMessage);

    try {
      final contentText = _controller.text;
      if (contentText == null || contentText.isEmpty) {
        throw Exception("Nội dung tin nhắn không hợp lệ.");
      }
      final data = MessagePost(
        contentText: contentText,
        roomId: widget.roomId,
      );
      // Gọi API để gửi tin nhắn
      final response = await service.sendMessage(data);
      if (response == null) {
        debugPrint("API call trả về null");
        throw Exception("API call không thành công");
      }
    } catch (e) {
      debugPrint("Error: $e");
    } finally {
      setState(() {
        isLoading = false;
      });
      scrollToBottom(); 
    }
    FocusScope.of(context).unfocus();
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    final listMessageInRoom = ref.watch(messageInRoomProvider) ?? [];
    final profileInfo = ref.watch(userProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Nội dung đoạn chat",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: 4),
            ],
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: listMessageInRoom.length,
              scrollDirection: Axis.vertical,
              controller: _scrollController,
              itemBuilder: (context, index) {
                final data = listMessageInRoom[index];
                if (data.ownerId == profileInfo?.id) {
                  return Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      padding: EdgeInsets.all(12.0),
                      margin: EdgeInsets.only(bottom: 8.0),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Text(
                        data.contentText ?? "Gửi không thành công",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  );
                }
                return Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.all(12.0),
                    margin: EdgeInsets.only(bottom: 8.0),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data.contentText ?? "Gửi không thành công",
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                        SizedBox(height: 8),
                      ],
                    ),
                  ),
                );
              },
              padding: EdgeInsets.all(16.0),
            ),
          ),
          if (isLoading)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircularProgressIndicator(),
            ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(top: BorderSide(color: Colors.grey.shade300)),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: "Aa...",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send, color: Colors.blue),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
