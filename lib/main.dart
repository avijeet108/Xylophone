import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void play(int x) {
    final player = AudioCache();
    player.play('note$x.wav');
  }
  Expanded button(int n, Color color){
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        onPressed: () {
          play(n);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              button(1,Colors.red),
              button(2,Colors.orange),
              button(3,Colors.yellow),
              button(4,Colors.green),
              button(5,Colors.teal),
              button(6,Colors.blue),
              button(7,Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
