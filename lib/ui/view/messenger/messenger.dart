import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/data/models/RoomMessageModel/MessageAIPost/MessageAIPost.dart';
import 'package:flutter_application_1/core/data/models/RoomMessageModel/RoomMessageAIPost/RoomMessageAIPost.dart';
import 'package:flutter_application_1/core/service/roomMessage/AI/room_message_ai.dart';
import 'package:flutter_application_1/core/service/roomMessage/message/mesage_service.dart';
import 'package:flutter_application_1/ui/view/messenger/chat-bot.dart';
import 'package:flutter_application_1/ui/view/messenger/chat.dart';
import 'package:flutter_application_1/ui/widget/messenger/recommendlist.dart';
import 'package:flutter_application_1/ui/widget/messenger/chatlist.dart';
import 'package:flutter_application_1/ui/widget/messenger/user-message-card.dart';
import 'package:flutter_application_1/ui/widget/messenger/bot-message-cart.dart';
import 'package:flutter_application_1/view-models/auth/user.prvd.dart';
import 'package:flutter_application_1/view-models/room-message/AI/room-messageAI.prvd.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MessengerScreen extends ConsumerStatefulWidget {
  const MessengerScreen({super.key});
  @override
  ConsumerState<MessengerScreen> createState() => _MessengerScreenState();
}

class _MessengerScreenState extends ConsumerState<MessengerScreen> {
  final roomMessageAI = RoomMessageAIService();
  final messageService = MessageInRoomService();
  final TextEditingController _textNameTopicRoom = TextEditingController();

  @override
  void initState() {
    super.initState();
    fetchRoomMessageAI();
  }

  @override
  void dispose() {
    _textNameTopicRoom.dispose();
    super.dispose();
  }

  Future<void> fetchRoomMessageAI() async {
    final data = await roomMessageAI.getAllRoomMessageAI();
    ref.read(roomMessageAIProvider.notifier).setListChatAI(data ?? []);
  }

  Future<void> createRoomMessageAI(String topicRoom) async {
    final profileInfo = ref.watch(userProvider);

    RoomMessageAIPost data = RoomMessageAIPost(
        accountInRoom: [profileInfo?.id ?? '', Constants.ID_CHAT_AI],
        name: topicRoom);
    final result = await roomMessageAI.createRoomMessageAI(data);
    if (result?.id != null) {
      final data = MessageAIPost(
        contentText: topicRoom,
        roomId: result?.id ?? "",
      );
      await messageService.sendMessageToAI(data);
      fetchRoomMessageAI();
      _textNameTopicRoom.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    final listAIRoom = ref.watch(roomMessageAIProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Trò chuyện',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // RecommendList
              SizedBox(
                height: 90,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return RecommendList(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChatScreen(),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),

              // Search bar
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 16),
                    border: InputBorder.none,
                    hintText: 'Tìm kiếm cuộc trò chuyện',
                    hintStyle: const TextStyle(color: Colors.grey),
                    prefixIcon: IconButton(
                      icon: SvgPicture.asset(
                        "assets/icons/search.svg",
                        width: 24,
                        height: 24,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Title and Create button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Cuộc trò chuyện với Tâm An',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _showCreateConversationModal(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 8,
                      ),
                    ),
                    child: const Text(
                      'Tạo hội thoại',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              // Bot message cards
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: listAIRoom.length,
                  itemBuilder: (context, index) {
                    return BotMessageCard(
                      text: listAIRoom[index].nameRoom ??
                          'Cuộc trò chuyện Tâm An',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChatBotScreen(
                                      roomId: listAIRoom[index].id,
                                      nameRoom: listAIRoom[index].nameRoom ??
                                          "Tâm an",
                                    )));
                      },
                    );
                  }),
              const SizedBox(height: 10),

              // Pinned section
              const Text(
                'Đã gim',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    UserCard(
                      avatarUrl: 'https://via.placeholder.com/150',
                      name: 'George Lobko',
                      message: 'Thanks for the quick response...',
                      backgroundColor: Colors.greenAccent.withOpacity(0.2),
                      index: 1,
                      indicatorColor: Colors.green,
                    ),
                    const SizedBox(width: 16),
                    UserCard(
                      avatarUrl: 'https://via.placeholder.com/150',
                      name: 'Amelia Korns',
                      message: 'I\'m stuck in traffic...',
                      backgroundColor: Colors.blueAccent.withOpacity(0.2),
                      index: 2,
                      indicatorColor: Colors.blue,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),

              // All chats section
              const Text(
                'Tất cả cuộc trò chuyện',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ChatList(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChatScreen(),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showCreateConversationModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            top: 16.0,
            bottom: MediaQuery.of(context).viewInsets.bottom + 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Tạo hội thoại với Tâm An',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: _textNameTopicRoom,
                  decoration: InputDecoration(
                    labelText: "Chủ đề cuộc trò chuyện",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    if (_textNameTopicRoom.text.isNotEmpty) {
                      createRoomMessageAI(_textNameTopicRoom.text);
                      Navigator.pop(context);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      minWidth: double.infinity,
                    ),
                    child: const Text(
                      "Tạo",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
