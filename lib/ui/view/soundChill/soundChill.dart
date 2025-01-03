import 'package:flutter/material.dart';
import 'package:flutter_application_1/view-models/soundChill/soundChill.prvd.dart';
import 'package:just_audio/just_audio.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/data/models/SendSorrowModel/SendSorrowModelGet.dart';
import 'package:flutter_application_1/core/service/sendSorrow/send_sorrow_service.dart';
import 'package:flutter_application_1/view-models/sendSorrow/sendSorrow.prvd.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SoundChillScreen extends ConsumerStatefulWidget {
  const SoundChillScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<SoundChillScreen> createState() => _SoundChillScreenState();
}

final AudioPlayer _audioPlayer = AudioPlayer();

class _SoundChillScreenState extends ConsumerState<SoundChillScreen> {
  List<SendSorrowModelGet> soundList = [];
  bool isPlaying = false; // Biến theo dõi trạng thái đang phát nhạc
  String? currentPlayingUrl; // Biến lưu trữ URL của nhạc đang phát

  @override
  void initState() {
    super.initState();
    fetchSound();
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  Future<void> fetchSound() async {
    final soundSendSorrow = SendSorrowService();
    final sounds = await soundSendSorrow.getAllSoundNatural();
    if (sounds != null) {
      ref.read(soundChillProvider.notifier).setSound(sounds);
      setState(() {
        soundList = sounds;
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to fetch sounds')),
      );
    }
  }

  Future<void> _playSound(String url) async {
    debugPrint('Attempting to play sound from URL: $url');
    try {
      if (currentPlayingUrl == url) {
        // Nếu nhạc đã đang phát, thì không cần phát lại
        if (isPlaying) {
          await _audioPlayer.pause(); // Tạm dừng nhạc
          setState(() {
            isPlaying = false;
          });
        } else {
          await _audioPlayer.play(); // Tiếp tục phát nhạc
          setState(() {
            isPlaying = true;
          });
        }
      } else {
        await _audioPlayer.setUrl(url);
        await _audioPlayer.play();
        setState(() {
          isPlaying = true;
          currentPlayingUrl = url;
        });
      }
    } catch (e) {
      debugPrint('Playback error: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Error playing sound: $e"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          "SoundChill",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 60.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal.shade300, Colors.teal.shade700],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: soundList.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                padding: const EdgeInsets.all(16.0),
                itemCount: soundList.length,
                itemBuilder: (context, index) {
                  final sound = soundList[index];
                  return Card(
                    color: Colors.white.withOpacity(0.8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: const EdgeInsets.only(bottom: 16),
                    child: ListTile(
                      leading: Icon(
                        Icons.music_note,
                        color: Colors.teal.shade700,
                        size: 32,
                      ),
                      title: Text(
                        sound.nameSound ?? '',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        maxLines: 1,
                      ),
                      trailing: ElevatedButton(
                        onPressed: () => _playSound(
                            '${Constants.awsUrl}${sound.pathPublic}'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal.shade700,
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(12),
                        ),
                        child: Icon(
                          isPlaying &&
                                  currentPlayingUrl ==
                                      '${Constants.awsUrl}${sound.pathPublic}'
                              ? Icons.pause
                              : Icons
                                  .play_arrow, // Thay đổi biểu tượng tùy theo trạng thái
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
