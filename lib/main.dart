import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() {
  runApp(XelophoneApp());
}

class XelophoneApp extends StatelessWidget {
  void playsound( int soundnumber){
    final player =AudioPlayer();
    player.play(AssetSource('note$soundnumber.wav'));
  }



  Expanded buildKey({ required Color color,required int soundnumber}){
   return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero ),
          backgroundColor : color ,
        ),
        onPressed: (){
          playsound(soundnumber);
        },
        child: Text(''),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildKey(color: Colors.redAccent , soundnumber: 1),
                  buildKey(color: Colors.blue , soundnumber: 2),
                  buildKey(color: Colors.pink , soundnumber: 3),
                  buildKey(color: Colors.brown, soundnumber: 4),
                  buildKey(color: Colors.purple , soundnumber: 5),
                  buildKey(color: Colors.yellowAccent, soundnumber: 6),
                  buildKey(color: Colors.teal.shade800 , soundnumber: 7),
                ],
              )
        ),
      ),
    ) ;
  }
}

