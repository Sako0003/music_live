import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:music_live/Musicplayer/music_player_page.dart';
import 'package:music_live/Searc/serach_1.dart';
import 'package:music_live/pages/home/HomeviewPage/home_view.dart';

import 'package:music_live/pages/registration/registration_view.dart';
import 'package:music_live/utils/drawer/drawerLibrary/drawer_library.dart';
import 'package:music_live/utils/drawer/drawerdownloads/drawer_downoads.dart';
import 'package:music_live/utils/drawer/drawersetting/drawersetting.dart';


import 'Searc/search_2.dart';
import 'utils/drawer/drawerHistory/drawer_historyr.dart';
import 'utils/drawer/drawerMyplaylist/drawer_mayplaylist.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    //metnlerin fontsize ucun   ScreenUtil().setSp(20, allowFontScalingSelf: true),
    // dizayn sayti https://psdetch.com/
//container uzunluq ucun ScreenUtil().setHeight(40),
//container genislik ucun ScreenUtil().setWidth(320),
//ScreenUtil().setHeight(1),//
    //ScreenUtil().setWidth(20),//
    return ScreenUtilInit(
      designSize: Size(365, 690),
      allowFontScaling: false,
      child: MaterialApp(
        routes: {
          '/main_page': (context) => HomePageView(),
          '/musicplayer': (context) => Musicplayer(),
          '/library': (context) => Library(),
          '/setting': (context) => Setting(),
          '/search1': (context) => Searc1page(),
          '/search2': (context) => Searc2page(),
          '/playlstdrawer': (context) => MyplaylisDraywer(),
          '/download': (context) => Downloads(),
          '/registr': (context) => RegistrationView(),
          '/history': (context) => History(),
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: RegistrationView(),
      ),
    );
  }
}
