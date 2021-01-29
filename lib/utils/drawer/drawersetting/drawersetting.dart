import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_live/pages/parts/SetingPlaybaklazimsiz.dart';
import 'package:music_live/pages/parts/Seting_langCash.dart';
import 'package:music_live/pages/parts/darkmode.dart';
import 'package:music_live/pages/parts/myicon.dart';


import '../../../pages/parts/settinsvicontaoner.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  
  bool offline = false;
  bool autoplay = false;
  bool isscipsliencetrack = false;
  bool notification = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading:Myicon(icon: Icons.chevron_left,size:size.width * 0.090 ,ontap:(){ Navigator.pop(context);} ),
         
        title: Center(
            child: Text(
          'Setting',
          style: TextStyle(color: Colors.black),
        )),
        actions: [
          Myicon(icon: Icons.search,size:size.width * 0.070 ,ontap:(){} ),
         
          SizedBox(width: size.width * 0.06),
        ],
      ),
      body: Container(
        color: Colors.white10,
        height: size.height * 1,
        width: double.infinity,
        child: Column(
          children: [
            SettingConnectionTextCont(
              size: size,
              fontSize: size.width * 0.05,
              text: 'Connection',
              fonweight: FontWeight.bold,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20),
                  alignment: Alignment.centerLeft,
                  height: size.height * 0.050,
                  width: size.width * 0.8 - 10,
                  //  color: Colors.brown,
                  child: Text(
                    'veliliturakljdda@gmail.com',
                    maxLines: 1,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.black87, fontSize: size.width * 0.04),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  splashColor: Colors.white,
                  hoverColor: Colors.white,
                  highlightColor: Colors.white,
                  focusColor: Colors.white,
                  child: Text(
                    'Log out',
                    style: TextStyle(
                        color: Colors.black, fontSize: size.width * 0.045),
                  ),
                ),
              ],
            ),
            
            DarkModeCont(size: size, ),
            
            SettingConnectionTextCont(
              size: size,
              fontSize: size.width * 0.05,
              text: 'Playback',
              fonweight: FontWeight.bold,
            ),
            Switchlistcontanorrr(
              onchanged: (val) {
                setState(() {
                  offline = val;
                });
                if (offline) {
                  //seyfeye gedis

                }
              },
              size: size,
              text: 'Offline Mode',
              value: offline,
            ),
            Switchlistcontanorrr(
              onchanged: (val) {
                setState(() {
                  autoplay = val;
                });
                if (autoplay) {
                  //seyfeye gedis

                }
              },
              size: size,
              text: 'Auto Pay',
              value: autoplay,
            ),
            Switchlistcontanorrr(
             onchanged: (val) {
                setState(() {
                  isscipsliencetrack = val;
                });
                if (isscipsliencetrack) {
                  //seyfeye gedrfrn

                }
              },
              size: size,
              text: 'Scip Slience between track',
              value:isscipsliencetrack,
            ),
            Switchlistcontanorrr(
             onchanged: (val) {
                setState(() {
                  notification = val;
                });
                if (notification) {
                  //seyfeye gedrfrn

                }
              },
              size: size,
              text: 'Notification',
              value: notification,
            ),
            SettingLanguageCashContainer(
              size: size,
              ontap: () {},
              text: 'Clear Cash',
            ),
            SettingLanguageCashContainer(
              size: size,
              ontap: () {},
              text: 'Language',
            ),
          ],
        ),
      ),
    );
  }
}

