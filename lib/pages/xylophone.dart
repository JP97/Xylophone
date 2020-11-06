import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class Xylophone extends StatefulWidget {
  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  void playSound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded buildKey(Color color, int imageNumber) {
    return Expanded(
      child: FlatButton(
          color: color,
          minWidth: 360,
          onPressed: () {
            playSound(imageNumber);
          }),
    );
  }

  Widget _buildXylophone() {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildKey(Colors.red, 1),
        buildKey(Colors.orange, 2),
        buildKey(Colors.yellow, 3),
        buildKey(Colors.green, 4),
        buildKey(Colors.teal, 5),
        buildKey(Colors.blue, 6),
        buildKey(Colors.purple, 7)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Xylophone"),
        centerTitle: true,
      ),
      body: _buildXylophone(),
      backgroundColor: Colors.blue.shade100,
    );
  }
}
