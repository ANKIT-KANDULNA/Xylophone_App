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
  Widget buildKey({required Color color,required int x}){
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
              buildKey(color: Colors.red,x: 1),
              buildKey(color: Colors.orange,x: 2),
              buildKey(color: Colors.yellow,x: 3),
              buildKey(color: Colors.green,x: 4),
              buildKey(color: Colors.blue,x: 5),
              buildKey(color: Colors.indigo,x: 6),
              buildKey(color: Colors.purple,x: 7),
            ],
          ),
        ),
      ),
    );
  }
}

