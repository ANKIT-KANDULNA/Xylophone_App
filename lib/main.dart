import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() {
  runApp(
    XylophoneApp(),
  );
}
class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});
  void playSound(int x){
    final player=AudioPlayer();
    player.play(AssetSource('note$x.wav'));
  }
  Widget buildKey(Color color,int x){
    return Expanded(
      child: TextButton(
        onPressed: (){
          playSound(x);
        },
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
        child: Text(''),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Colors.red,1),
              buildKey(Colors.orange,2),
              buildKey(Colors.yellow,3),
              buildKey(Colors.green,4),
              buildKey(Colors.blue,5),
              buildKey(Colors.indigo,6),
              buildKey(Colors.purple,7),
            ],
          ),
        ),
      ),
    );
  }
}

