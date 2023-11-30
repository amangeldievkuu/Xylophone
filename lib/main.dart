import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const Xylophone());
}

class Xylophone extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({Color color = Colors.black, int soundNumber = 1}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(color),
            shape: MaterialStateProperty.all(
                const RoundedRectangleBorder(borderRadius: BorderRadius.zero))),
        onPressed: () {
          playSound(soundNumber);
        },
        child: const Text('Click me'),
      ),
    );
  }

  const Xylophone({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildKey(color: Colors.red, soundNumber: 1),
                  buildKey(color: Colors.orange, soundNumber: 2),
                  buildKey(color: Colors.yellow, soundNumber: 3),
                  buildKey(color: Colors.green, soundNumber: 4),
                  buildKey(color: Colors.teal, soundNumber: 5),
                  buildKey(color: Colors.blue, soundNumber: 6),
                  buildKey(color: Colors.purple, soundNumber: 7),
                ]),
          ),
        ),
      ),
    );
  }
}
