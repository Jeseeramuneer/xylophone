import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


void main()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
    home: MyApp()));
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  buildkey(Color color,int sound){
    return Expanded(
        child: Container(
          color:color,
          child: TextButton(onPressed:(){
            playSound(sound);
            },

              child: Text('Audio')),
        ),
        );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Xylophone"),
      ),
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             buildkey(Colors.red, 1),
             buildkey(Colors.orange,2),
             buildkey(Colors.yellow,3),
             buildkey(Colors.green,4),
             buildkey(Colors.teal,5),
             buildkey(Colors.blue,6),
             buildkey(Colors.purple,7),

          ],

        ),
      ),
    );
  }

  void playSound(int soundNmbr)
  {
    final player=AudioCache(prefix: 'sounds/');
    player.play('assets_note$soundNmbr.wav');
  }
}
