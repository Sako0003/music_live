import 'dart:ui';
import 'package:http/http.dart' as request;
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:music_live/pages/parts/my_textstyle.dart';
import 'package:music_live/pages/parts/myicon.dart';
class SliderPlayercontainer extends StatefulWidget {
  @override
  _SliderPlayercontainerState createState() => _SliderPlayercontainerState();
}
class _SliderPlayercontainerState extends State<SliderPlayercontainer> {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;
  AudioPlayer _player = AudioPlayer();
  AudioCache cache;
  Duration position = Duration();
  Duration musiclenght = Duration();
  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);}
 @override
  void initState() {
    super.initState();
    //Audio player yazanda hemise problem kotlin sdk version(kotlin version deyis)
    _player = AudioPlayer();
    _player.play("https://filesamples.com/samples/audio/mp3/sample1.mp3");
    cache = AudioCache(fixedPlayer: _player);
    _player.onDurationChanged.listen((duration) {
      setState(() {
        musiclenght = duration;
      });});
    _player.onAudioPositionChanged.listen((newPostion) {
      setState(() {
        position = newPostion;
      });});}
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container( // color: Colors.green,
      height: size.height * 0.4 - 22,
      width: size.width * 1,   
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 15),
            height: size.height * 0.1 - 50,
            width: size.width * 0.9 - 30,
            child: Row(
              children: [
                Mytextstyle(textcolor: Colors.black54,
                  fontsizetext: size.width * 0.048,
                  text:'${musiclenght.inHours}:${position.inMinutes}:${position.inSeconds.remainder(60)}',),
                Spacer(),// 
                Mytextstyle(textcolor: Colors.black54,
                  fontsizetext: size.width * 0.048,
                  text:'${musiclenght.inHours}:${musiclenght.inMinutes}:${musiclenght.inSeconds.remainder(60)}',),
              ],
            ),
          ),
          Container( // color: Colors.amber,
            margin: EdgeInsets.only(top: 15),
            alignment: Alignment.center,
            height: size.height * 0.1 - 49, width: size.width * 0.5 - 9,
            child: 
            Mytextstyle(text:'Jaybal ',
            textcolor:Colors.black54,
            fontsizetext: size.width * 0.1 - 20)),
          Container(
            alignment: Alignment.center, //  color: Colors.green,          
            height: size.height * 0.1 - 45, width: size.width * 0.8,
            child:Mytextstyle(
              text: 'Music Is My Terephyy ',
            textcolor:Colors.black,
            fontsizetext: size.width * 0.1 - 15,)),
          Container(
            alignment: Alignment.center, // color: Colors.amber,           
            height: size.height * 0.2 - 25, width: size.width * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [               
                Myicon(icon: Icons.sync, size: size.width * 0.065, ontap: () {}),
                Myicon(icon: Icons.skip_previous, size: size.width * 0.090, ontap: () {}),
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: size.width * 0.090,
                  child: IconButton(
                      splashColor: Colors.white,
                      hoverColor: Colors.white,
                      highlightColor: Colors.white,
                      focusColor: Colors.white,
                      icon: Icon(
                        playBtn,
                        size: size.width * 0.088,
                        color: Colors.white,),
                      onPressed: () {
                        if (!playing) {
                          // _player.play("https://filesamples.com/samples/audio/mp3/sample1.mp3");
                          setState(
                            () {
                              playBtn = Icons.pause;
                              playing = true;
                            },
                          );
                        } else {
                          setState(() {
                            _player.pause();
                            playBtn = Icons.play_arrow;
                            playing = false;
                          });}}),),
                Myicon(icon: Icons.skip_next, size: size.width * 0.090, ontap: () {}),
                Myicon(icon: Icons.shuffle_sharp, size: size.width * 0.065, ontap: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
