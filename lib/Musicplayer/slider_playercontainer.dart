import 'dart:ui';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:music_live/Musicplayer/showdialoq_1musicplayer.dart';
import 'package:music_live/model/song.dart';
import 'package:music_live/pages/parts/image_container.dart';
import 'package:music_live/pages/parts/my_textstyle.dart';
import 'package:music_live/pages/parts/myicon.dart';
import 'package:music_live/pages/parts/sesartiran_cont.dart';
import 'package:music_live/utils/variables.dart';

class SliderPlayercontainer extends StatefulWidget {
  final Song song;

  const SliderPlayercontainer({Key key, this.song}) : super(key: key);
  @override
  _SliderPlayercontainerState createState() =>
      _SliderPlayercontainerState(song);
}

class _SliderPlayercontainerState extends State<SliderPlayercontainer> {
  AudioPlayer audioPlayer;
  Song mysong;
  bool isPlaying = true;
  Duration _duration;
  Duration _position;
  double _slider;
  // ignore: unused_field
  double _sliderVolume;
  // ignore: unused_field
  String _error;
  //

  _SliderPlayercontainerState(this.mysong);
  //
  Future<void> share(String link, String name, String imageeurl) async {
    await FlutterShare.share(
        title: 'Example share',
        text: name,
        linkUrl: link,
        chooserTitle: imageeurl);
  }

  //
  @override
  void initState() {
    super.initState();
    setState(() {
      mysong = widget.song;
    });
    audioPlayer = AudioPlayer();
    _setupAudioPlayer();
    _playAudio();
    setupAudio();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void setupAudio() {
    audioPlayer.onDurationChanged.listen((Duration d) {
      if (this.mounted) {
        setState(() => _duration = d);
      }
    });

    audioPlayer.onAudioPositionChanged.listen((Duration p) {
      if (this.mounted) {
        setState(() => _position = p);
      }
    });

    audioPlayer.onSeekComplete.listen((event) {
      _slider = _position.inMilliseconds / _duration.inMilliseconds;
      setState(() {});
    });
  }

  void _setupAudioPlayer() async {
    await audioPlayer.setUrl(mysong.musicurl);
    await audioPlayer.setReleaseMode(ReleaseMode.STOP);
  }

  _stopAudio() async {
    await audioPlayer.stop();
    if (this.mounted) {
      setState(() {
        isPlaying = false;
      });
    }
  }

  _playAudio() async {
    await audioPlayer.resume();
    if (this.mounted) {
      setState(() {
        isPlaying = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white10,
        leading: Myicon(
          icon: Icons.chevron_left,
          size: size.width * 0.090,
          ontap: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Myicon(
              icon: Icons.save_alt,
              size: size.width * 0.070,
              ontap: () {
                if (this.mounted) {
                  setState(() {
                    mylist2.add(Song(
                        musicurl:
                        "https://dl.espressif.com/dl/audio/ff-16b-2c-44100hz.m4a",
                        datamusic: '24/24/24',
                        id: '2',
                        groub: 'A',
                        albumid: '20',
                        imageUrl:
                            'https://variety.com/wp-content/uploads/2020/01/taylor-swift-variety-cover-5-16x9-1000.jpg',
                        musicstil: 'Taylorrr',
                        title: 'Turall'));
                  });
                }
              }),
          Myicon(
            icon: Icons.share,
            ontap: () => share(mysong.musicurl, mysong.title, mysong.imageUrl),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Myicon(
                icon: Icons.control_point,
                size: size.width * 0.070,
                ontap: () {
                  // this code showdialoq inside
                  showDialoqFunc(context);
                }),
          ),
        ],
      ),
      body: Container(
        // color: Colors.green,
        //   height: size.height * 0.465,
        alignment: Alignment.center,
        child: ListView(
          children: [
            Container(
              height: size.height * 0.4 + 20,
              width: size.width * 1,
              // color: Colors.amber,
              margin: EdgeInsets.only(left: 10, right: 10),
              child: ImageContainer(
                withcont: size.width * 0.7,
                heightcont: size.height * 0.4 + 20,
                imageradius: 1,
                contmarginn: EdgeInsets.only(left: 25, right: 25),
                imageurl: mysong.imageUrl,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15, left: 15, right: 15),
              height: size.height * 0.1 - 50,
              width: size.width * 0.9 - 30,
              child: Row(
                children: [
                  Mytextstyle(
                    textcolor: Colors.black54,
                    fontsizetext: size.width * 0.040,
                    text: _formatDuration(_position),
                  ),
                  Spacer(), //
                  Mytextstyle(
                    textcolor: Colors.black54,
                    fontsizetext: size.width * 0.040,
                    text: _formatDuration(_duration),
                  ),
                ],
              ),
            ),
            Container(
              //color: Colors.blue,
              alignment: Alignment.bottomLeft,
              height: size.height * 0.03,
              width: size.width * 0.85,
              margin: EdgeInsets.only(left: 10, right: 10),
              child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    trackHeight: 2,
                    thumbColor: Colors.white,
                    overlayColor: Colors.black,
                    thumbShape: RoundSliderThumbShape(
                      disabledThumbRadius: 5,
                      enabledThumbRadius: 5,
                    ),
                    overlayShape: RoundSliderOverlayShape(
                      overlayRadius: 10,
                    ),
                    activeTrackColor: Colors.black87,
                    inactiveTrackColor: Colors.grey,
                  ),
                  child: Slider(
                    value: _slider ?? 0,
                    onChanged: (value) {
                      setState(() {
                        _slider = value;
                      });
                    },
                    onChangeEnd: (value) async {
                      if (_duration != null) {
                        Duration msec = Duration(
                            milliseconds:
                                (_duration.inMilliseconds * value).round());

                        await audioPlayer.seek(msec);
                      }
                    },
                  )),
            ),
            Container(
                alignment: Alignment.center, // color: Colors.green,
                height: size.height * 0.1 - 45,
                width: size.width * 0.8,
                child: Mytextstyle(
                  text: mysong.title,
                  textcolor: Colors.black54,
                  fontsizetext: size.width * 0.1 - 25,
                )),
            Container(
                alignment: Alignment.center, //  color: Colors.pink,
                height: size.height * 0.1 - 45,
                width: size.width * 0.8,
                child: Mytextstyle(
                  text: mysong.musicstil,
                  textcolor: Colors.black,
                  fontsizetext: size.width * 0.1 - 15,
                )),
            Container(
              alignment: Alignment.center, // color: Colors.brown,
              height: size.height * 0.2 , width: size.width * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Myicon(
                      icon: Icons.repeat,
                      size: size.width * 0.060,
                      ontap: () {}),
                  Myicon(
                      icon: Icons.skip_previous,
                      size: size.width * 0.090,
                      ontap: () {}),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: size.width * 0.090,
                    child: IconButton(
                      onPressed: () {
                        if (isPlaying)
                          _stopAudio();
                        else
                          _playAudio();
                      },
                      padding: const EdgeInsets.all(0.0),
                      icon: Icon(
                        isPlaying ? Icons.pause : Icons.play_arrow,
                        size: size.width * 0.1,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Myicon(
                      icon: Icons.skip_next,
                      size: size.width * 0.090,
                      ontap: () {}),
                  Myicon(
                      icon: Icons.shuffle,
                      size: size.width * 0.060,
                      ontap: () {
                        mylist2.shuffle();
                      }),
                ],
              ),
            ),
            SesartiranCont(audioPlayer: audioPlayer)
          ],
        ),
      ),
    );
  }
}

String _formatDuration(Duration d) {
  if (d == null) return "--:--";
  int minute = d.inMinutes;
  int second = (d.inSeconds > 60) ? (d.inSeconds % 60) : d.inSeconds;
  String format = ((minute < 10) ? "0$minute" : "$minute") +
      ":" +
      ((second < 10) ? "0$second" : "$second");
  return format;
}

// import 'dart:io';
// import 'dart:ui';
// //import 'package:audio_manager/audio_manager.dart';
// //import 'package:http/http.dart' as request;
// import 'package:audio_manager/audio_manager.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// //import 'package:flutter/services.dart';
// //import 'package:path_provider/path_provider.dart';
// //import 'package:audioplayers/audioplayers.dart';
// import 'package:music_live/pages/parts/my_textstyle.dart';
// import 'package:music_live/pages/parts/myicon.dart';
// import 'package:music_live/pages/parts/sesartiran_cont.dart';
// import 'package:path_provider/path_provider.dart';

// class SliderPlayercontainer extends StatefulWidget {
//   @override
//   _SliderPlayercontainerState createState() => _SliderPlayercontainerState();
// }

// class _SliderPlayercontainerState extends State<SliderPlayercontainer> {
//  // String _platformVersion = 'Unknown';
//   bool isPlaying = true;
//   Duration _duration;
//   Duration _position;
//   double _slider;
//   // ignore: unused_field
//   double _sliderVolume;
//   // ignore: unused_field
//   String _error;

//   num curIndex = 0;
//   PlayMode playMode = AudioManager.instance.playMode;

//   final list = [

//     {
//       "title": "network",
//       "desc": "network resouce playback",
//       "mahniurl": "https://dl.espressif.com/dl/audio/ff-16b-2c-44100hz.m4a",
//       "shekilUrl": "https://homepages.cae.wisc.edu/~ece533/images/airplane.png"
//     }
//   ];

//   @override
//   void initState() {
//     super.initState();

//    // initPlatformState();
//     setupAudio();
//      loadFile();
//   }

//   @override
//   void dispose() {
//     AudioManager.instance.release();
//     super.dispose();
//   }

//   void setupAudio() {
//     List<AudioInfo> _list = [];
//     list.forEach((item) => _list.add(AudioInfo(item["mahniurl"],
//         title: item["title"], desc: item["desc"], coverUrl: item["shekilUrl"])));

//     AudioManager.instance.audioList = _list;
//     AudioManager.instance.intercepter = true;
//     AudioManager.instance.play(auto: false);

//     AudioManager.instance.onEvents((events, args) {
//       print("$events, $args");
//       switch (events) {
//         case AudioManagerEvents.start:
//           print(
//               "start load data callback, curIndex is ${AudioManager.instance.curIndex}");
//           _position = AudioManager.instance.position;
//           _duration = AudioManager.instance.duration;
//           _slider = 0;
//           setState(() {});
//           break;

//         case AudioManagerEvents.ready:
//           print("ready to play");
//           _error = null;
//           _sliderVolume = AudioManager.instance.volume;
//           _position = AudioManager.instance.position;
//           _duration = AudioManager.instance.duration;
//           setState(() {});
//           //if you need to seek times, must after AudioManagerEvents.ready event invoked
//          // AudioManager.instance.seekTo(Duration(seconds: 10));
//           break;
//         case AudioManagerEvents.seekComplete:
//           _position = AudioManager.instance.position;
//           _slider = _position.inMilliseconds / _duration.inMilliseconds;
//           setState(() {});
//           print("seek event is completed. position is [$args]/ms");
//           break;
//         case AudioManagerEvents.buffering:
//           print("buffering $args");
//           break;
//         case AudioManagerEvents.playstatus:
//           isPlaying = AudioManager.instance.isPlaying;
//           setState(() {});
//           break;
//         case AudioManagerEvents.timeupdate:
//           _position = AudioManager.instance.position;
//           _slider = _position.inMilliseconds / _duration.inMilliseconds;
//           setState(() {});
//           AudioManager.instance.updateLrc(args["position"].toString());
//           break;
//         case AudioManagerEvents.error:///en son bunu sildin
//           _error = args;
//           setState(() {});
//           break;
//         case AudioManagerEvents.ended:
//           AudioManager.instance.next();
//           break;
//         case AudioManagerEvents.volumeChange:
//           _sliderVolume = AudioManager.instance.volume;
//           setState(() {});
//           break;
//         default:
//           break;
//       }
//     });
//   }

//   void loadFile() async {
//     // read bundle file to local path
//     final audioFile = await rootBundle.load("assets/aLIEz.m4a");
//     final audio = audioFile.buffer.asUint8List();

//     final appDocDir = await getApplicationDocumentsDirectory();
//     print(appDocDir);

//     final file = File("${appDocDir.path}/aLIEz.m4a");
//     file.writeAsBytesSync(audio);

//     AudioInfo info = AudioInfo("file://${file.path}",
//         title: "file", desc: "local file", coverUrl: "assets/aLIEz.jpg");

//     list.add(info.toJson());
//     AudioManager.instance.audioList.add(info);
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Container(
//       // color: Colors.green,
//       height: size.height * 0.465 ,
//       width: size.width * 1,
//       child: Column(
//         children: [
//           Container(
//             margin: EdgeInsets.only(top: 15),
//             height: size.height * 0.1 - 50,
//             width: size.width * 0.9 - 30,
//             child: Row(
//               children: [
//                 Mytextstyle(
//                   textcolor: Colors.black54,
//                   fontsizetext: size.width * 0.040,
//                   text: _formatDuration(_position),
//                 ),
//                 Spacer(), //
//                 Mytextstyle(
//                   textcolor: Colors.black54,
//                   fontsizetext: size.width * 0.040,
//                   text: _formatDuration(_duration),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             //color: Colors.blue,
//             alignment: Alignment.bottomLeft,
//             height: size.height * 0.03,
//             width: size.width * 0.85,
//             child: SliderTheme(
//                 data: SliderTheme.of(context).copyWith(
//                   trackHeight: 2,
//                   thumbColor: Colors.white,
//                   overlayColor: Colors.black,
//                   thumbShape: RoundSliderThumbShape(
//                     disabledThumbRadius: 5,
//                     enabledThumbRadius: 5,
//                   ),
//                   overlayShape: RoundSliderOverlayShape(
//                     overlayRadius: 10,
//                   ),
//                   activeTrackColor: Colors.black87,
//                   inactiveTrackColor: Colors.grey,
//                 ),
//                 child: Slider(
//                   value: _slider ?? 0,
//                   onChanged: (value) {
//                     setState(() {
//                       _slider = value;
//                     });
//                   },
//                   onChangeEnd: (value) {
//                     if (_duration != null) {
//                       Duration msec = Duration(
//                           milliseconds:
//                               (_duration.inMilliseconds * value).round());
//                       AudioManager.instance.seekTo(msec);
//                     }
//                   },
//                 )),
//           ),
//           Container(
//               //color: Colors.amber,
//              // margin: EdgeInsets.only(top: 15),
//               alignment: Alignment.center,
//               height: size.height * 0.1 - 29,
//               width: size.width * 0.5 - 9,
//               child: Expanded(
//                 child: ListView.separated(
//                     itemBuilder: (context, index) {
//                       return ListTile(
//                         // title: Text(list[index]["title"],
//                         //     style: TextStyle(fontSize: 18)),
//                         subtitle: Text(list[index]["desc"]),
//                         onTap: () => AudioManager.instance.play(index: index),
//                       );
//                     },
//                     separatorBuilder: (BuildContext context, int index) =>
//                          Divider(),
//                     itemCount: list.length),
//               ),

//               ),
//           Container(
//               alignment: Alignment.center,  // color: Colors.pink,
//               height: size.height * 0.1 - 45,
//               width: size.width * 0.8,
//               child: Mytextstyle(
//                 text: 'Music Is My Terephyy ',
//                 textcolor: Colors.black,
//                 fontsizetext: size.width * 0.1 - 15,
//               )),
//           Container(
//             alignment: Alignment.center, // color: Colors.brown,
//             height: size.height * 0.2 - 25, width: size.width * 0.8,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 //size: size.width * 0.065,
//                 IconButton(
//                   icon: getPlayModeIcon(playMode),
//                   onPressed: () {
//                     playMode = AudioManager.instance.nextMode();
//                     setState(() {});
//                   },
//                 ),
//                 Myicon(
//                     icon: Icons.skip_previous,
//                     size: size.width * 0.090,
//                     ontap: () => AudioManager.instance.previous()),
//                 CircleAvatar(
//                   backgroundColor: Colors.black,
//                   radius: size.width * 0.090,
//                   child: IconButton(
//                     onPressed: () async {
//                       bool playing = await AudioManager.instance.playOrPause();
//                       print("await  $playing");
//                     },
//                     padding: const EdgeInsets.all(0.0),
//                     icon: Icon(
//                       isPlaying ? Icons.pause : Icons.play_arrow,
//                       size: size.width * 0.1,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//                 Myicon(
//                     icon: Icons.skip_next,
//                     size: size.width * 0.090,
//                     ontap: () => AudioManager.instance.next()),
//                 Myicon(
//                     icon: Icons.shuffle_sharp,
//                     size: size.width * 0.065,
//                     ontap: () {
//                      // Navigator.pushNamed(context, '/mahnitest');
//                     }),
//               ],
//             ),
//           ),SesartiranCont()
//         ],
//       ),
//     );
//   }
// }

// String _formatDuration(Duration d) {
//   if (d == null) return "--:--";
//   int minute = d.inMinutes;
//   int second = (d.inSeconds > 60) ? (d.inSeconds % 60) : d.inSeconds;
//   String format = ((minute < 10) ? "0$minute" : "$minute") +
//       ":" +
//       ((second < 10) ? "0$second" : "$second");
//   return format;
// }

// Widget getPlayModeIcon(PlayMode playMode) {
//   switch (playMode) {
//     case PlayMode.sequence:
//       return Icon(
//         Icons.repeat,
//         color: Colors.black,
//       );
//     case PlayMode.shuffle:
//       return Icon(
//         Icons.shuffle,
//         color: Colors.black,
//       );
//     case PlayMode.single:
//       return Icon(
//         Icons.repeat_one,
//         color: Colors.black,
//       );
//   }
//   return Container();
// }
