import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:music_live/pages/parts/my_textstyle.dart';
import '../../pages/parts/mydrawer_liztname_container.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      // height:ScreenUtil().setHeight(690),
      width: ScreenUtil().setWidth(190),
      // backgroundColor: Colors.black,
      child: Drawer(
        elevation: 0,
        child: Scaffold(
          body: Container(
            alignment: Alignment.center,
            height: ScreenUtil().setHeight(690),
            width: ScreenUtil().setWidth(190),
            color: Colors.black,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Container(
                      // color: Colors.amber,
                      alignment: Alignment.center,
                      width: ScreenUtil().setWidth(100),
                      child: Mytextstyle(
                        textcolor: Colors.white,
                        text: 'Music',
                        fontsizetext: ScreenUtil().setSp(
                          25,
                        ),
                      )),
                ),
                MyDrawerlistNameContainer(
                  contheight: ScreenUtil().setHeight(29),
                  contwidth: ScreenUtil().setWidth(133),
                  ontap: () {
                    Navigator.pushNamed(context, '/library');
                  },
                  text: 'Library',
                  icon: Icons.music_note,
                ),
                MyDrawerlistNameContainer(
                  contheight: ScreenUtil().setHeight(29),
                  contwidth: ScreenUtil().setWidth(133),
                  ontap: () {
                    Navigator.pushNamed(context, '/playlstdrawer');
                  },
                  text: 'Myplaylist',
                  icon: Icons.queue_music,
                ),
                MyDrawerlistNameContainer(
                    contheight: ScreenUtil().setHeight(29),
                    contwidth: ScreenUtil().setWidth(133),
                    ontap: () {
                      Navigator.pushNamed(context, '/history');
                    },
                    text: 'History',
                    icon: Icons.history),
                MyDrawerlistNameContainer(
                    contheight: ScreenUtil().setHeight(29),
                    contwidth: ScreenUtil().setWidth(133),
                    ontap: () {
                      Navigator.pushNamed(context, '/download');
                    },
                    text: 'Downloads',
                    icon: Icons.file_download),
                MyDrawerlistNameContainer(
                  contheight: ScreenUtil().setHeight(29),
                  contwidth: ScreenUtil().setWidth(133),
                  ontap: () {
                    Navigator.pushNamed(context, '/setting');
                  },
                  text: 'Setting',
                  icon: Icons.brightness_7,
                ),
                MyDrawerlistNameContainer(
                  contheight: ScreenUtil().setHeight(29),
                  contwidth: ScreenUtil().setWidth(133),
                  ontap: () {
                    Navigator.pushNamed(context, '/registr');
                  },
                  text: 'Logout',
                  icon: Icons.power_settings_new,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

