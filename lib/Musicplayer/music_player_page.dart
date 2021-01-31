import 'dart:async';
import 'package:flutter/material.dart';
import 'package:music_live/pages/parts/image_container.dart';
import 'package:music_live/pages/parts/myicon.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:music_live/pages/parts/sesartiran_cont.dart';
import 'package:music_live/utils/drawer/drawerdownloads/drawer_downoads.dart';
import 'package:music_live/utils/variables.dart';
import 'showdialoq_1musicplayer.dart';
import 'slider_playercontainer.dart';

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

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                  showDialoqFunc(context);
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
              child: ImageContainer(
                  withcont: size.width * 0.7,
                  heightcont: size.height * 0.4 + 20,
                  imageradius: 1,
                  contmarginn: EdgeInsets.only(left: 25, right: 25),
                  imageurl: Variables.noImage),
            ),
            SliderPlayercontainer(),
            SesartiranCont(),
          ],
        ),
      ]),
    );
  }
}
