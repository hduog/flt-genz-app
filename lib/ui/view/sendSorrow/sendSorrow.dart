import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:audioplayers/audioplayers.dart';
import 'dart:math';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/data/models/QuoteSendSorrow/QuoteSendSorrowPost.dart';
import 'package:flutter_application_1/core/service/sendSorrow/send_sorrow_service.dart';
import 'package:flutter_application_1/ui/widget/music-player.dart';
import 'package:flutter_application_1/view-models/sendSorrow/sendSorrow.prvd.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

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

class SendSorrow extends ConsumerStatefulWidget {
  @override
  ConsumerState createState() => _SendSorrowState();
}

final AudioPlayer _audioPlayer = AudioPlayer();

class _SendSorrowState extends ConsumerState<SendSorrow>
    with SingleTickerProviderStateMixin {
  final TextEditingController _controller = TextEditingController();
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;
  late Animation<Offset> _positionAnimation;

  String? _displayedText;
  String? _displayedMentalHeathText;
  String _selectedBg = LIST_BG[0];
  bool _isAnimating = false;
  int _currentPhraseIndex = 0;
  Timer? _textUpdateTimer;
  String? _finalHealText;
  @override
  void initState() {
    super.initState();
    fetchSound();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 60),
    )..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _showMessage(_finalHealText ?? "Cảm ơn vì đã chia sẻ cho tôi !");
          _stopTextUpdate();
        }
      });

    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.05).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.0, 0.8, curve: Curves.easeOut),
      ),
    );

    _positionAnimation =
        Tween<Offset>(begin: Offset.zero, end: const Offset(0.0, -2.5)).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.4, 1.0, curve: Curves.easeIn),
      ),
    );
  }

  void _stopTextUpdate() {
    if (_textUpdateTimer != null && _textUpdateTimer!.isActive) {
      _textUpdateTimer!.cancel();
    }
  }

  Future<void> _startTextUpdate(List<String> list) async {
    _textUpdateTimer = Timer.periodic(const Duration(seconds: 4), (timer) {
      if (_isAnimating) {
        setState(() {
          _displayedMentalHeathText = list[_currentPhraseIndex];
          _currentPhraseIndex = (_currentPhraseIndex + 1) % list.length;
        });
      }
    });
  }

  Future<void> fetchSound() async {
    final soundSendSorrow = SendSorrowService();
    final sounds = await soundSendSorrow.getAllSoundSendSorrow();
    ref.read(soundSendSorrowProvider.notifier).setSound(sounds ?? []);
  }

  void _startAnimationAndMusic() async {
    if (_controller.text.isNotEmpty) {
      setState(() {
        _displayedText = _controller.text;
        _isAnimating = true;
      });
      final soundSendSorrow = SendSorrowService();
      final data = QuoteSendSorrowPost(
          contentText: _displayedText ?? 'Một ngày bình thường');
      final quotes = await soundSendSorrow.sendSorrowToAI(data);
      final list = quotes?.arrayQuote ?? [];
      setState(() {
        _finalHealText = quotes?.mentalHeathQuote ?? '';
      });
      _startTextUpdate(list);
      _controller.clear();
      _animationController.forward();
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
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    _audioPlayer.stop();
                    setState(() {
                      _isAnimating = false;
                      _displayedText = null;
                    });
                    _animationController.reset();
                    Navigator.pop(context);
                  },
                  child:
                      Text("kết thúc", style: TextStyle(color: Colors.white)),
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
    final soundList = ref.watch(soundSendSorrowProvider);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 15, 
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text("Gửi muộn phiền",
            style: TextStyle(fontSize: 14, color: Colors.white)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Stack(
        children: [
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
              SlideTransition(
                position: _positionAnimation,
                child: ScaleTransition(
                  scale: _scaleAnimation,
                  child: Container(
                    width: 200,
                    height: 200,
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.6),
                          spreadRadius: 5,
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        _displayedText ?? "",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
              ),
              if (_displayedMentalHeathText != null && _isAnimating)
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(
                        color: Colors.blue.withOpacity(0.6),
                        width: 2.0,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Text(
                      _displayedMentalHeathText ?? "",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 16,
                          color: colorTextHeader,
                          fontStyle: FontStyle.italic),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              const SizedBox(height: 100),
              if (!_isAnimating)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: "Gửi muộn phiền của bạn vào đây...",
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 20.0),
                      hintStyle: const TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: const BorderSide(
                          color: Colors.blueAccent,
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(
                          color: Colors.grey.withOpacity(0.4),
                          width: 1.5,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: const BorderSide(
                          color: Colors.red,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
              const SizedBox(height: 16),
              if (!_isAnimating)
                ElevatedButton(
                  onPressed: _startAnimationAndMusic,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: colorIconActive,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 25.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    elevation: 5,
                    shadowColor: Colors.blue.withOpacity(0.3),
                  ),
                  child: const Text(
                    "Gửi đi",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              const Spacer(flex: 1),
              if (_isAnimating)
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text('Gửi phiền muộn',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        SpinningDiscPlayer(
                          audioUrl:
                              '${Constants.awsUrl}${soundList[Random().nextInt(soundList.length)].pathPublic}',
                          discImageUrl: 'assets/images/reels-test.png',
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
          if (!_isAnimating)
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 1.0),
                child: IconButton(
                  onPressed: () {
                    _showBackgroundPicker(context);
                  },
                  icon: Icon(Icons.arrow_back_ios),
                  iconSize: 24,
                  color: colorTextHeader,
                  tooltip: 'Chọn background',
                ),
              ),
            ),
        ],
      ),
    );
  }

  void _showBackgroundPicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  offset: Offset(0, -4),
                ),
              ],
            ),
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.5,
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
                    borderRadius: BorderRadius.circular(12),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(12),
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
