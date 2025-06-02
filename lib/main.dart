import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

void playSound(int soundNumber) async {
  final player = AudioPlayer();
  await player.play(AssetSource('sound/note-1_$soundNumber.mp3'));
}

Expanded BuildWidget(colorName, soundNumber) {
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(
        backgroundColor: colorName,
        enableFeedback: false,
      ),
      onPressed: () {
        playSound(soundNumber);
      },
      child: Text(''),
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BuildWidget(Colors.red, 1),
                BuildWidget(Colors.orange, 2),
                BuildWidget(Colors.yellow, 3),
                BuildWidget(Colors.green, 4),
                BuildWidget(Colors.blue, 5),
                BuildWidget(Colors.blue.shade800, 6),
                BuildWidget(Colors.purple, 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
