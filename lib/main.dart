import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:music_live/Musicplayer/music_player_page.dart';
import 'package:music_live/pages/home/home_view.dart';

import 'package:music_live/pages/registration/registration_view.dart';

import 'pages/home/library.dart';

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
    //metnlerin fontsize ucun   ScreenUtil().setSp(20, allowFontScalingSelf: true)
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
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData(backgroundColor: Colors.black45),
        home: RegistrationView(),
      ),
    );
  }
}
