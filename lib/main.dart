import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
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
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      enableFeedback: false,
                    ),
                    onPressed: () async {
                      final player = AudioPlayer();
                      await player.play(AssetSource('sound/note-1_1.mp3'));
                    },
                    child: Text(''),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.orange, enableFeedback: false),
                    onPressed: () async {
                      final player = AudioPlayer();
                      await player.play(AssetSource('sound/note-1_2.mp3'));
                    },
                    child: Text(''),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.yellow, enableFeedback: false),
                    onPressed: () async {
                      final player = AudioPlayer();
                      await player.play(AssetSource('sound/note-1_3.mp3'));
                    },
                    child: Text(''),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green.shade400, enableFeedback: false,
                    ),
                    onPressed: () async {
                      final player = AudioPlayer();
                      await player.play(AssetSource('sound/note-1_4.mp3'));
                    },
                    child: Text(''),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.green, enableFeedback: false,),
                    onPressed: () async {
                      final player = AudioPlayer();
                      await player.play(AssetSource('sound/note-1_5.mp3'));
                    },
                    child: Text(''),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.blue, enableFeedback: false),
                    onPressed: () async {
                      final player = AudioPlayer();
                      await player.play(AssetSource('sound/note-1_6.mp3'));
                    },
                    child: Text(''),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.purple.shade800, enableFeedback: false,
                    ),
                    onPressed: () async {
                      final player = AudioPlayer();
                      await player.play(AssetSource('sound/note-1_7.mp3'));
                    },
                    child: Text(''),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
