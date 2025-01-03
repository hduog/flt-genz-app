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
import 'package:flutter_application_1/ui/widget/messenger/bot-message-cart.dart';
import 'package:flutter_application_1/view-models/auth/user.prvd.dart';
import 'package:flutter_application_1/view-models/follow/follow.prvd.dart';
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
  final roomMessage = MessageInRoomService();
  final messageService = MessageInRoomService();
  final TextEditingController _textNameTopicRoom = TextEditingController();
  bool showAll = false;

  @override
  void initState() {
    super.initState();
    fetchRoomMessageAI();
    fetchFollower();
    fetchChatRRoom();
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

  Future<void> fetchFollower() async {
    final data = await roomMessageAI.getFollower();
    ref.read(followProvider.notifier).setFollower(data ?? []);
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

  Future<void> createRoomMessageUser(
      String topicRoom, String targetUserId) async {
    final profileInfo = ref.watch(userProvider);

    RoomMessageAIPost data = RoomMessageAIPost(
      accountInRoom: [profileInfo?.id ?? '', targetUserId],
      name: topicRoom,
    );
    final result = await roomMessageAI.createRoomMessageAI(data);
    if (result?.id != null) {
      _textNameTopicRoom.clear();
    }
  }

  Future<void> fetchChatRRoom() async {
    final data = await roomMessage.fetchChatList();
    ref.read(roomMessageAIProvider.notifier).setListChatRoom(data ??[]);
  }
  

  @override
  Widget build(BuildContext context) {
    final listAIRoom = ref.watch(roomMessageAIProvider).chatAI;
    final followers = ref.watch(followProvider);
    final chatRoomList = ref.watch(roomMessageAIProvider).chatRoom;
    final visibleList = showAll ? listAIRoom : listAIRoom.take(1).toList();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Center(
          child: Text(
            'Đoạn chat',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search bar
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 8,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 10),
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
              const SizedBox(height: 4),
              // Recommend
              SizedBox(
                height: 95,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: followers.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: RecommendList(
                        follower: followers[index],
                        onTap: () async {
                          await createRoomMessageUser(
                            'Chat with ${followers[index].fullName}', 
                            followers[index].id, 
                          );
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChatScreen(
                                roomId:
                                    followers[index].id, 
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
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
                      backgroundColor: const Color.fromARGB(255, 89, 147, 247),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 16,
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

              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: visibleList.length,
                itemBuilder: (context, index) {
                  return BotMessageCard(
                    text: visibleList[index].nameRoom,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChatBotScreen(
                            roomId: visibleList[index].id,
                            nameRoom: visibleList[index].nameRoom,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              if (listAIRoom.length > 2)
                TextButton(
                  onPressed: () {
                    setState(() {
                      showAll =
                          !showAll; // Đổi trạng thái giữa showAll và không
                    });
                  },
                  child: Text(
                    showAll ? 'Thu gọn' : 'Xem thêm',
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                ),
              // All chats section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Tất cả cuộc trò chuyện',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: chatRoomList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: ChatList(
                      roomMessage: chatRoomList[index],
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChatScreen(
                              roomId: chatRoomList[index].id,
                            ),
                          ),
                        );
                      },
                    ),
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
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
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
