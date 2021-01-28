import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_live/pages/home/myicon.dart';

import 'sawitchlistcontanorrr.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool darkmode = false;
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
            ConnectionContainer(
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
            Divider(
              color: Colors.black,
              height: size.height * 0.02,
             ),// height: size.height * 0.040,
            //           width: size.width * 0.7,//
            Container(
      alignment: Alignment.topLeft,
      height: size.height * 0.057,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 10),
      // color: Colors.pink,
      child: ListTile(
        title: Container(
          padding: EdgeInsets.only(left: 5),
          alignment: Alignment.centerLeft,
          // color: Colors.green,
          height: size.height * 0.040,
          width: size.width * 0.7,
          child: Text(
            'Dark mode',
            maxLines: 1,
            style: TextStyle(fontWeight: FontWeight.bold,
              color: Colors.black, fontSize: size.width * 0.050),
          ),
        ),
        trailing: Container(
          
          height: size.height * 0.04,
          width: size.width * 0.135,
          decoration: BoxDecoration(
              border: Border.all(
                width: 0.8,
                color: Colors.black54
              ),
              borderRadius: BorderRadius.circular(15)),
          child: CupertinoSwitch(
            activeColor: Colors.black54,
            value: darkmode,
            onChanged: (val) {
                setState(() {
                  darkmode = val;
                });
                if (offline) {
                  //seyfeye gedis

                }
              },
          ),
        ),
      ),
    ),
            Divider(
              color: Colors.black,
              height: size.height * 0.02,
            ),
            ConnectionContainer(
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
            LanguageContainer(
              size: size,
              ontap: () {},
              text: 'Clear Cash',
            ),
            LanguageContainer(
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

///Mellimden Sorus Sttylesse bolende bele Aplicationunun Suretine tesir edir ya yox ona gore duzelish et
class LanguageContainer extends StatelessWidget {
  const LanguageContainer({
    Key key,
    @required this.size,
    this.text,
    this.ontap,
  }) : super(key: key);

  final Size size;
  final text;
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.white,
      hoverColor: Colors.white,
      highlightColor: Colors.white,
      focusColor: Colors.white,
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.only(left: 23),
        // color: Colors.amber,
        alignment: Alignment.centerLeft,
        height: size.height * 0.050,
        width: double.infinity,
        child: Text(
          text,
          maxLines: 1,
          style: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.black,
              fontSize: size.width * 0.04),
        ),
      ),
    );
  }
}

class ConnectionContainer extends StatelessWidget {
  const ConnectionContainer({
    Key key,
    @required this.size,
    this.text,
    this.fontSize,
    this.fonweight,
  }) : super(key: key);

  final Size size;
  final text;
  final double fontSize;
  final FontWeight fonweight;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      alignment: Alignment.centerLeft,
      height: size.height * 0.050,
      width: double.infinity,
      //  color: Colors.red,
      child: Text(
        text,
        maxLines: 1,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: size.width * 0.05),
      ),
    );
  }
}

//  maxLines: 1,
// softWrap: true,
// overflow: TextOverflow.ellipsis,
