import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/view/messenger/chat.dart';
import 'package:flutter_application_1/ui/widget/messenger/recommendlist.dart';
import 'package:flutter_application_1/ui/widget/messenger/chatlist.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Messengers',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/setting.svg",
              width: 30,
              height: 30,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF1F3F4),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    border: InputBorder.none,
                    hintText: 'Tìm kiếm trên Messenger',
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: IconButton(
                      icon: SvgPicture.asset(
                        "assets/icons/search.svg",
                        width: 30,
                        height: 30,
                      ),
                      onPressed: () {
                      
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              //RecommendList
              SizedBox(
                height: 100,
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
              SizedBox(height: 10),
              // All Chats
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
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
}
