import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
// import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MusicWidget());
}

// ignore: use_key_in_widget_constructors
class MusicWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void playMusic(int musicNumber) {
      final player = AudioPlayer();
      player.play(AssetSource('music-$musicNumber.mp3'));
    }

    Expanded myButton(
        {required int musicNumber,
        required Color buttonColor,
        required String buttonText}) {
      return Expanded(
        child: TextButton(
          onPressed: () {
            playMusic(musicNumber);
          },
          child: Text(
            buttonText,
            style: TextStyle(
              color: buttonColor,
              fontSize: 40.0,
            ),
          ),
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[300],
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text('قصار السور '),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            myButton(
                musicNumber: 1,
                buttonColor: Colors.amber,
                buttonText: "سورة الفلق"),
            myButton(
                buttonColor: Colors.blue,
                musicNumber: 2,
                buttonText: "سورة الكوثر"),
            myButton(
                musicNumber: 3,
                buttonColor: Colors.black87,
                buttonText: "سورة الكافرون"),
            myButton(
                musicNumber: 4,
                buttonColor: Colors.red,
                buttonText: "سورة النصر"),
            myButton(
                musicNumber: 5,
                buttonColor: Colors.green,
                buttonText: "سورة المسد"),
            myButton(
                musicNumber: 6,
                buttonColor: Colors.grey,
                buttonText: "سورة الاخلاص"),
            myButton(
                musicNumber: 7,
                buttonColor: Colors.brown,
                buttonText: "سورة الناس"),
          ],
        ),
      ),
    );
  }
}
