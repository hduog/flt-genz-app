import 'package:flutter/material.dart';
import 'dart:math';

class SendSorrow extends StatefulWidget {
  // final List<String> listSound;
  // SendSorrow({required this.listSound});

  @override
  _SendSorrowState createState() => _SendSorrowState();
}

class _SendSorrowState extends State<SendSorrow> {
  

  List<int> stars = List.generate(50, (index) => DateTime.now().millisecondsSinceEpoch);
  String? message;
  bool active = false;
  bool moveUp = false;
  int messageIndex = 0;
  bool showMessage = false;
  String selectedBg = 'assets/images/bg-landing.png';
  int? randomContent;
  int? randomSound;
  int step = 0;

  @override
  void initState() {
    super.initState();
    // randomSound = Random().nextInt(widget.listSound.length);
    Future.delayed(Duration(seconds: 4), () {
      setState(() {
        step = 1;
      });
    });
  }

  void handleMessageChange(String value) {
    setState(() {
      message = value;
    });
  }

  void handleSubmit() {
    if (message != null && message!.isNotEmpty) {
      setState(() {
        active = true;
        randomContent = Random().nextInt(5); // Giả sử MESSAGES_SORROW có 5 phần tử
      });
    }
  }

  void removeStar() {
    setState(() {
      stars.removeAt(0);
    });
  }

  Widget renderLastMessage() {
    return Column(
      children: [
        Text(
          'Thông điệp yêu thương',
          style: TextStyle(fontSize: 60, color: Colors.white),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            'GenZ MH',
            style: TextStyle(
              fontSize: 24,
              color: Color(0xFF0F52BA),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            'Hy vọng rằng bạn sẽ thấy bớt căng thẳng hơn và kết nối được nhiều hơn',
            style: TextStyle(fontSize: 28, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(selectedBg),
                fit: BoxFit.cover,
              ),
            ),
          ),
          if (step == 0)
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Gửi phiền muộn',
                    style: TextStyle(
                      fontSize: 32,
                      color: Color(0xFF1D3D63),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Hãy gửi những phiền muộn của bạn vào đây'),
                  Image.asset(
                    'assets/images/bg-top.png',
                    width: 440,
                    height: 530,
                  ),
                ],
              ),
            ),
          Center(
            child: Container(
              width: 700,
              padding: EdgeInsets.only(top: 100),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (active && randomContent != null)
                    Text(
                      messageIndex >= 5 // Giả sử MESSAGES_SORROW có 5 phần tử
                          ? renderLastMessage().toString()
                          : 'Thông điệp nè :D',
                      style: TextStyle(fontSize: 28, color: Color(0xFF1D3D63)),
                    )
                  else
                    Text(
                      'Gửi muộn phiền của bạn vào đây',
                      style: TextStyle(fontSize: 28, color: Color(0xFF1D3D63)),
                    ),
                ],
              ),
            ),
          ),
          if (!active)
            Positioned(
              bottom: 150,
              left: MediaQuery.of(context).size.width / 2 - 150,
              child: Container(
                width: 350,
                child: TextField(
                  onChanged: handleMessageChange,
                  decoration: InputDecoration(
                    hintText: 'Điều gì đang làm bạn cảm thấy phiền?...',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
            ),
          if (!active)
            Positioned(
              bottom: 100,
              left: MediaQuery.of(context).size.width / 2 - 75,
              child: ElevatedButton(
                onPressed: handleSubmit,
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  backgroundColor: Color(0xFF0F52BA),
                ),
                child: Text(
                  'Gửi',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
