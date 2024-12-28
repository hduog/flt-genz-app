import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class SpinningDiscPlayer extends StatefulWidget {
  final String audioUrl;
  final String discImageUrl;

  const SpinningDiscPlayer({
    Key? key,
    required this.audioUrl,
    required this.discImageUrl,
  }) : super(key: key);

  @override
  _SpinningDiscPlayerState createState() => _SpinningDiscPlayerState();
}

class _SpinningDiscPlayerState extends State<SpinningDiscPlayer>
    with SingleTickerProviderStateMixin {
  late AudioPlayer _audioPlayer;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..repeat();

    _playAudio();
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    _animationController.dispose();
    super.dispose();
  }

  Future<void> _playAudio() async {
    await _audioPlayer.play(UrlSource(widget.audioUrl));
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _animationController,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(widget.discImageUrl),
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
