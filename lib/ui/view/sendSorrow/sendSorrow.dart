import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:audioplayers/audioplayers.dart';
import 'dart:math';
import 'package:flutter_application_1/core/constants/constants.dart';

const LIST_BG = [
  'assets/images/sendsorrow1.png',
  'assets/images/sendsorrow2.png',
  'assets/images/sendsorrow3.png',
  'assets/images/sendsorrow4.png',
  'assets/images/sendsorrow5.png',
  'assets/images/sendsorrow6.png',
  'assets/images/sendsorrow7.png',
  'assets/images/sendsorrow8.png',
  'assets/images/sendsorrow9.png',
  'assets/images/sendsorrow10.png',
];

class SendSorrow extends StatefulWidget {
  @override
  _SendSorrowState createState() => _SendSorrowState();
}

final AudioPlayer _audioPlayer = AudioPlayer();

class _SendSorrowState extends State<SendSorrow>
    with SingleTickerProviderStateMixin {
  final TextEditingController _controller = TextEditingController();
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;
  late Animation<Offset> _positionAnimation;

  String? _displayedText;
  String _selectedBg = LIST_BG[0]; // Hình nền mặc định
  bool _isAnimating = false;
  bool _hasSent = false; // Thêm biến trạng thái gửi đã xong hay chưa

  List<String> listSound = [];

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    );

    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.05).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.0, 0.4, curve: Curves.easeOut),
      ),
    );

    _positionAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(0.0, -2.5),
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.4, 1.0, curve: Curves.easeIn),
      ),
    );
  }

  void _startAnimationAndMusic() async {
    if (_controller.text.isNotEmpty) {
      setState(() {
        _displayedText = _controller.text;
        _isAnimating = true;
      });

      // Xóa nội dung TextField
      _controller.clear();

      // Bắt đầu hoạt ảnh
      _animationController.forward();

      final random = Random();
      final randomUrl = listSound[random.nextInt(listSound.length)];

      try {
        // Phát nhạc từ URL
        await _audioPlayer.play(UrlSource(randomUrl));
        print("Playing: $randomUrl");
      } catch (e) {
        print("Error playing audio: $e");
      }
      // Theo dõi trạng thái của animation
      _animationController.addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _showMessage(
              "Hy vọng rằng bạn sẽ thấy bớt căng thẳng và được kết nối nhiều hơn.");
        }
      });
    }
  }

  void _changeBackground(String newBg) {
    setState(() {
      _selectedBg = newBg;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _animationController.dispose();
    _audioPlayer.dispose(); // Hủy AudioPlayer để giải phóng tài nguyên
    super.dispose();
  }

  void _showMessage(String message) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          backgroundColor:
              Colors.transparent, // Đảm bảo rằng nền của Dialog là trong suốt
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white, // Màu nền trắng cho phần chứa nội dung
              borderRadius: BorderRadius.circular(16.0),
            ),
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Row(
                  children: [
                    Image(
                      image: AssetImage('assets/images/logo.png'),
                      width: 70,
                      height: 50,
                    ),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: BackdropFilter(
                    filter:
                        ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0), // Mờ nền
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white
                            .withOpacity(0.6), // Nền trắng mờ cho phần này
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: Text(
                        message,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontStyle:
                              FontStyle.italic, // Để nhìn giống lời trích dẫn
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Đóng dialog
                  },
                  child: Text("Đóng"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gửi muộn phiền"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          // Hình nền
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(_selectedBg),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              const Spacer(flex: 2),
              // Hiển thị hình tròn chứa ảnh và văn bản
              if (_isAnimating)
                SlideTransition(
                  position: _positionAnimation,
                  child: ScaleTransition(
                    scale: _scaleAnimation,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          image: AssetImage("assets/images/reels-test.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          _displayedText ?? "",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              // Nếu chưa gửi thì sẽ hiển thị TextField để nhập văn bản
              if (!_isAnimating || _hasSent)
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                      image: AssetImage("assets/images/reels-test.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      _displayedText ?? "",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Gửi muộn phiền của bạn vào đây...",
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.8),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _startAnimationAndMusic,
                child: const Text("Gửi"),
              ),
              const Spacer(flex: 1),
            ],
          ),
          Align(
            alignment: Alignment.centerRight, // Căn chỉnh nút vào giữa bên phải
            child: Padding(
              padding: const EdgeInsets.only(
                  right: 1.0), // Căn chỉnh nút cách mép phải một khoảng
              child: IconButton(
                onPressed: () {
                  _showBackgroundPicker(context);
                },
                icon: Icon(Icons.arrow_back_ios),
                iconSize: 24, // Kích thước icon
                color: const Color.fromARGB(255, 0, 0, 0), // Màu của icon
                tooltip: 'Chọn background',
              ),
            ),
          )
        ],
      ),
    );
  }

  void _showBackgroundPicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // Để bảng chọn có thể được tùy chỉnh chiều cao
      backgroundColor: Colors.transparent, // Giữ nguyên nền xung quanh
      builder: (context) {
        return Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white, // Màu nền trắng cho bảng chọn
              borderRadius: BorderRadius.circular(20), // Bo góc của bảng chọn
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  offset: Offset(0, -4), // Tạo bóng đổ hướng lên trên
                ),
              ],
            ),
            width:
                MediaQuery.of(context).size.width * 0.8, // Chiều rộng bảng chọn
            height:
                MediaQuery.of(context).size.height * 0.5, // Chiều cao bảng chọn
            child: GridView.builder(
              padding: const EdgeInsets.all(16.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              itemCount: LIST_BG.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    _changeBackground(LIST_BG[index]);
                    Navigator.pop(context);
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12), // Bo góc ảnh
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius:
                            BorderRadius.circular(12), // Bo góc khi nhấn
                        onTap: () {
                          _changeBackground(LIST_BG[index]);
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          LIST_BG[index],
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
