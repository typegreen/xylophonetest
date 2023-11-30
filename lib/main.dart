import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

Color acolor(int A){
  switch(A){
    case 1:
      return Colors.red;
      break;
    case 2:
      return Colors.orange;
      break;
    case 3:
      return Colors.yellow;
      break;
    case 4:
      return Colors.green;
      break;
    case 5:
      return Colors.teal;
      break;
    case 6:
      return Colors.blue;
      break;
    case 7:
      return Colors.indigo;
      break;
  }
  return Colors.red;
}

Expanded keys(int A){
  return Expanded(
    child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: acolor(A),
          shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
        ),
        onPressed: (){
          final player = AudioPlayer();
          player.play(AssetSource('note$A.wav'));
        },
        child: Container(
          height: 50.0,
        )
    ),
  );
}





class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              keys(1),
              keys(2),
              keys(3),
              keys(4),
              keys(5),
              keys(6),
              keys(7),
            ],
          ),
        ),
      ),
    );
  }
}

