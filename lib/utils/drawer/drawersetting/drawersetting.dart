import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_live/pages/parts/SetingPlaybaklazimsiz.dart';
import 'package:music_live/pages/parts/darkmode.dart';
import 'package:music_live/pages/parts/my_textstyle.dart';
import 'package:music_live/pages/parts/seting_lang_cach.dart';
import 'package:music_live/pages/parts/myicon.dart';
import '../../../pages/parts/setigswitcontao.dart';

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
        leading: Myicon(
            icon: Icons.chevron_left,
            size: size.width * 0.090,
            ontap: () {
              Navigator.pop(context);
            }),
        title: Center(
            child: Text(
          'Setting',
          style: TextStyle(color: Colors.black),
        )),
        actions: [
          Myicon(icon: Icons.search, size: size.width * 0.070, ontap: () {}),
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
              fontSize: size.width * 0.05,
              text: 'Connection',
            ),
            Row(
              children: [
                Container(
                  //  color: Colors.brown,
                  padding: EdgeInsets.only(left: 20),
                  alignment: Alignment.centerLeft,
                  height: size.height * 0.050,
                  width: size.width * 0.8 - 10,
                  child: Mytextstyle(
                    textcolor: Colors.black87,
                    text: 'veliliturakljdda@gmail.com',
                    fontsizetext: size.width * 0.04,
                  ),
                ),
                InkWell(
                    onTap: () {},
                    splashColor: Colors.white,
                    hoverColor: Colors.white,
                    highlightColor: Colors.white,
                    focusColor: Colors.white,
                    child: Mytextstyle(
                      fontsizetext: size.width * 0.045,
                      textcolor: Colors.black87,
                      text: 'Log out',
                    )),
              ],
            ),
            DarkModeCont(
            ),
            SettingConnectionTextCont(
              fontSize: size.width * 0.05,
              text: 'Playback',
              ),
            Switchlistcontanorrr(
              onchanged: (val) {
                setState(() {
                  offline = val;
                });
                if (offline) { //seyfeye gedis
                 }},
              text: 'Offline Mode',
              value: offline,
            ),
            Switchlistcontanorrr(
              onchanged: (val) {
                setState(() {
                  autoplay = val;
                });
                if (autoplay) {//seyfeye gedis
                  }},
              text: 'Auto Pay',
              value: autoplay,
            ),
            Switchlistcontanorrr(
              onchanged: (val) {
                setState(() {
                  isscipsliencetrack = val;
                });
                if (isscipsliencetrack) {//seyfeye gedrfrn
                  }},
              text: 'Scip Slience between track',
              value: isscipsliencetrack,
            ),
            Switchlistcontanorrr(
              onchanged: (val) {
                setState(() {
                  notification = val;
                });
                if (notification) {
                  //seyfeye gedrfrn

                }},
              text: 'Notification',
              value: notification,
            ),
            SettingLanguageCashContainer(
              ontap: () {},
              text: 'Clear Cash',
            ),
            SettingLanguageCashContainer(
              ontap: () {},
              text: 'Language',
            ),
          ],
        ),
      ),
    );
  }
}
