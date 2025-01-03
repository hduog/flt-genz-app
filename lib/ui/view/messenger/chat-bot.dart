import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/data/models/RoomMessageModel/MessageAIPost/MessageAIPost.dart';
import 'package:flutter_application_1/core/data/models/RoomMessageModel/MessageGet/MessageGet.dart';
import 'package:flutter_application_1/core/data/models/RoomMessageModel/OwnerRoom/OwnerRoomGet.dart';
import 'package:flutter_application_1/core/service/roomMessage/message/mesage_service.dart';
import 'package:flutter_application_1/view-models/auth/user.prvd.dart';
import 'package:flutter_application_1/view-models/room-message/message/message.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatBotScreen extends ConsumerStatefulWidget {
  final String roomId;
  final String nameRoom;
  @override
  ConsumerState<ChatBotScreen> createState() => _ChatBotScreenState();
  const ChatBotScreen({
    super.key,
    required this.roomId,
    required this.nameRoom,
  });
}

class _ChatBotScreenState extends ConsumerState<ChatBotScreen> {
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final service = MessageInRoomService();
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
    final data = await service.getAllRoomMessageAI(widget.roomId);
    ref.read(messageInRoomProvider.notifier).setListMessage(data ?? []);
  }

  Future<void> sendMessage() async {
    if (_controller.text.isNotEmpty) {
      setState(() {
        isLoading = true;
      });

      final profileInfo = ref.read(userProvider);
      final userMessage = MessageGet(
        id: DateTime.timestamp().toIso8601String(),
        owner: OwnerRoomGet(id: profileInfo?.id ?? ''),
        contentText: _controller.text,
        ownerId: profileInfo?.id,
      );
      ref.read(messageInRoomProvider.notifier).addMoreMessage(userMessage);

      try {
        final data = MessageAIPost(
          contentText: _controller.text,
          roomId: widget.roomId,
        );
        final result = await service.sendMessageToAI(data);
        final botMessage = MessageGet(
          id: DateTime.timestamp().toIso8601String(),
          owner: OwnerRoomGet(id: result?.ownerId ?? ""),
          contentText: result?.contentText,
          ownerId: result?.ownerId,
        );
        ref.read(messageInRoomProvider.notifier).addMoreMessage(botMessage);
      } catch (e) {
        print(e);
        debugPrint("Error: $e");
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Đã xảy ra lỗi khi gửi tin nhắn!")),
        );
      } finally {
        setState(() {
          isLoading = false;
        });
        scrollToBottom();
      }

      FocusScope.of(context).unfocus();
      _controller.clear();
    }
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
          icon: Icon(Icons.arrow_back, color: Colors.black),
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
                'Tâm An',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
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
                  onPressed: sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
