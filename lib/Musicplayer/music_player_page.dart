
import 'dart:ui';

import 'package:flutter/material.dart';


import 'package:music_live/utils/variables.dart';

import 'newfile_listview.dart';
import 'slider_playercontainer.dart';
//import 'package:music_live/Mainpage/music_image_container.dart';

class Musicplayer extends StatefulWidget {
  @override
  _MusicplayerState createState() => _MusicplayerState();
}

class _MusicplayerState extends State<Musicplayer> {
  double musict = 0.0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white10,
        leading: IconButton(
          splashColor: Colors.white,
          hoverColor: Colors.white,
          highlightColor: Colors.white,
          focusColor: Colors.white,
          icon: Icon(
            Icons.chevron_left,
            color: Colors.black,
            size: size.width * 0.090,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            splashColor: Colors.white,
            hoverColor: Colors.white,
            highlightColor: Colors.white,
            focusColor: Colors.white,
            icon: Icon(
              Icons.save_alt,
              color: Colors.black,
              size: size.width * 0.070,
            ),
            onPressed: () {},
          ),
          IconButton(
            splashColor: Colors.white,
            hoverColor: Colors.white,
            highlightColor: Colors.white,
            focusColor: Colors.white,
            icon: Icon(
              Icons.share,
              color: Colors.black,
              size: size.width * 0.070,
            ),
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              splashColor: Colors.white,
              hoverColor: Colors.white,
              highlightColor: Colors.white,
              focusColor: Colors.white,
              icon: Icon(
                Icons.control_point,
                color: Colors.black,
                size: size.width * 0.070,
              ),
              onPressed: () {
                // this code NewfileListview inside
                showDialoqFunc(
                  context,
                
                );
              },
            ),
          ),
        ],
      ),
      body: Column(
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
            child: Row(
              children: [
                Icon(
                  Icons.volume_mute,
                  color: Colors.black45,
                  size: size.width * 0.065,
                ),
                Expanded(
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
                Icon(
                  Icons.volume_up,
                  color: Colors.black45,
                  size: size.width * 0.065,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

