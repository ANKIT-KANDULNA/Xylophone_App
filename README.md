# 🎵 Xylophone Application

## ✨ Features:
  🎶 7 different musical notes (C–B scale).
  🌈 Vibrant, colorful UI with each button in a unique shade.
  📱 Responsive design for smooth performance on different devices.
  🧩 Simple and beginner-friendly code structure.

## Thought Process while building: 
  For local assets we can use AudioCache class:
  To have function of playing audio in the app we need to import “audioplayers” library and add dependency in the pubsec.yaml.
  import ‘package:audioplayers/audioplayers.dart’;
  Center(
    child: TextButton(
      onPressed: (){
    	final player=AudioPlayer();
    	player.play(AssetSource(‘note1.wav’));
    },
    	child: Text(‘Click ME!!’),
    ),
  ),
  void playSound(int x){
  	final player=AudioPlayer();
  	player.play(AssetSource(‘note$x.wav’));
  }
  TextButton(
  	onPressed: (){
  	playSound(x);
  },
  style: TextButton.styleFrom(
  	backgroundColor: Colors.red,
  ),
  	child: Text(‘’),
  ),
## In textButton widget the child: should always be mentioned and always be mentioned at the last only.
Expanded(
	child: TextButton(
	onPressed(){
	playSound(x),
},
style: TextButton.styleFrom(
	backgroundColor: Colors.red,
	shape: RoundedRectangleBorder(
	borderRadius: BorderRadius.zero,
),
),
child: Text(‘’),
),
),
child: Column(
	crossAxisAlignment: CrossAxisAlignment.stretch,
	mainAxisAlignment: MainAxisAlignment.spaceEvenly,
	children: [
	Expanded(),
	…. 6 mores times
],
),
Widget buildKey(Color color, int x){
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
    	child: Text(‘’),
    ),
  );
}
  
## 📸 Screenshots:
  <img width="471" height="966" alt="image" src="https://github.com/user-attachments/assets/20a9fc20-7b0a-4a9e-987e-91838005a5b4" />

## 🎯 Skills Highlighted
  Flutter & Dart mobile development
  Working with assets (sounds & images)
  Implementing custom UI widgets
  Cross-platform (Android & iOS) support

## 📌 Future Improvements
  Add record & playback functionality.
  Support for multiple octaves.
  Add animations for better user experience.

## 👨‍💻 Author
  Ankit Kandulna
