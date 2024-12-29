import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class TakeABreakPage extends StatefulWidget {
  @override
  _TakeABreakPageState createState() => _TakeABreakPageState();
}

class _TakeABreakPageState extends State<TakeABreakPage> {
  double _selectedTime = 10.0; // Thời gian mặc định là 10 giây
  bool _isCountingDown = false;
  bool _showMessage = false;
  int _remainingTime = 0; // Thời gian còn lại
  late AudioPlayer _audioPlayer;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
  }

  void _startCountdown() async {
    setState(() {
      _isCountingDown = true;
      _showMessage = false;
      _remainingTime = _selectedTime.toInt(); // Khởi tạo thời gian còn lại
    });

    await _audioPlayer.play(AssetSource('audio/matketnoi.mp3'));

    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      if (_remainingTime > 0) {
        setState(() {
          _remainingTime--;
        });
      } else {
        timer.cancel(); // Dừng timer khi đếm ngược kết thúc
        setState(() {
          _isCountingDown = false;
          _showMessage = true; // Chuyển sang màn hình thông điệp
        });
        _audioPlayer.stop();
      }
    });
  }

  void _showMessageDialog(String message) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          backgroundColor: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
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
                    filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0), // Mờ nền
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.6), // Nền trắng mờ
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
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _isCountingDown = false;
                      _showMessage = false; // Quay lại màn hình đầu tiên
                    });
                    Navigator.pop(context); // Đóng hộp thoại
                  },
                  child: Text("kết thúc", style: TextStyle(color: Colors.white)),
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
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios,
          size: 15,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Dừng lại một chút',
            style: TextStyle(fontSize: 14, color: Colors.white)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: _showMessage
            ? _buildMessageScreen()
            : _isCountingDown
                ? _buildCountdownScreen()
                : _buildTimeSelectionScreen(),
      ),
    );
  }

  Widget _buildTimeSelectionScreen() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/chillgai.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Chọn thời gian (giây): ${_selectedTime.toInt()}',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          Slider(
            value: _selectedTime,
            min: 10.0,
            max: 180.0,
            divisions: 34,
            label: '${_selectedTime.toInt()} giây',
            onChanged: (double value) {
              setState(() {
                _selectedTime = value;
              });
            },
          ),
          ElevatedButton(
            onPressed: _startCountdown,
            child: Text('Bắt đầu'),
          ),
        ],
      ),
    );
  }

  Widget _buildCountdownScreen() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/chillgai.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Text(
          '$_remainingTime',
          style: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildMessageScreen() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showMessageDialog(
          'Hy vọng rằng bạn sẽ thấy bớt căng thẳng và kết nối được nhiều hơn');
    });

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/chillgai.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Bạn có thể thêm các widget khác ở đây nếu cần
          ],
        ),
      ),
    );
  }
}