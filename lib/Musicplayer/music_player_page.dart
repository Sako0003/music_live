import 'dart:async';

import 'package:flutter/material.dart';
import 'package:music_live/pages/parts/myicon.dart';



import 'package:flutter_share/flutter_share.dart';
import 'package:music_live/utils/drawer/drawerdownloads/drawer_downoads.dart';
import 'package:music_live/utils/variables.dart';

import 'showdialoq.dart';
import 'slider_playercontainer.dart';
//import 'package:music_live/Mainpage/music_image_container.dart';

class Musicplayer extends StatefulWidget {
  @override
  _MusicplayerState createState() => _MusicplayerState();
}

class _MusicplayerState extends State<Musicplayer> {
  Future<void> share() async {
    await FlutterShare.share(
        title: 'Example share',
        text: 'Example share text',
        linkUrl: 'https://flutter.dev/',
        chooserTitle: 'Example Chooser Title');
  }

  double musict = 0.0;

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
                var data = {
                  "albumId": 20,
                  "id": 1,
                  "title": "song1",
                  "url": "https://via.placeholder.com/600/92c952",
                  "thumbnailUrl":
                      'https://c.files.bbci.co.uk/203A/production/_107105280_488f082d-e3bf-4f7f-b6d2-d3aa0998facb.jpg',
                  "author": 'Veliiii',
                  "date": '11/2/21',
                  "group": 'A',
                };
                setState(() {
                  mydownload.add(data);
                });
              }), //urlFileShare,
          Myicon(
            icon: Icons.share,
            ontap: share,
          ),
          Padding(
            //
            padding: const EdgeInsets.only(right: 10),
            child: Myicon(
                icon: Icons.control_point,
                size: size.width * 0.070,
                ontap: () {
                  // this code showdialoq inside
                  showDialoqFunc(
                    context,
                  );
                }),
          ),
        ],
      ),
      body: ListView(children: [
        Column(
          children: [
            Container(
              height: size.height * 0.4 + 20,
              width: size.width * 1,
              // color: Colors.amber,
              child: ColorFiltered(
                colorFilter: ColorFilter.matrix(
                  [
                    0.2126, 0.7152, 0.0722, 0, 0,
                    0.2126, 0.7152, 0.0722, 0,
                    0, //this color image change(black)
                    0.2126, 0.7152, 0.0722, 0, 0,
                    0, 0, 0, 1, 0,
                  ],
                ),
                child: Container(
                  margin: EdgeInsets.only(left: 25, right: 25),
                  height: size.height * 0.4 + 20,
                  width: size.width * 0.7,
                  decoration: BoxDecoration(
                    // color: Colors.black,
                    borderRadius: BorderRadius.all(
                      Radius.circular(1),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(Variables.noImage),
                    ),
                  ),
                ),
              ),
            ),
            SliderPlayercontainer(),
            Container(
              margin: EdgeInsets.only(top: 5),
//color: Colors.amber,
              alignment: Alignment.bottomLeft,
              height: size.height * 0.1 - 47,
              width: size.width * 0.9 - 27, //color: Colors.blue,
              child: Flex(
                direction: Axis.horizontal,
                children: [
                  Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.volume_mute,
                      color: Colors.black45,
                      size: size.width * 0.065,
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Container(
                      child: Slider(
                        inactiveColor: Colors.black12,
                        activeColor: Colors.black87,
                        min: 0,
                        max: 50,
                        value: musict,
                        onChanged: (double newValue) {
                          setState(
                            () {
                              musict = newValue;
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.volume_up,
                      color: Colors.black45,
                      size: size.width * 0.065,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
