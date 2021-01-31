import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_live/pages/home/HomeviewPage/mynavbar.dart';
import 'package:music_live/pages/parts/my_textstyle.dart';
import 'package:music_live/pages/parts/myicon.dart';
import 'package:music_live/utils/drawer/drawerHistory/drawer_historyr.dart';
import '../../variables.dart';
class MyplaylisDraywer extends StatefulWidget {
  @override
  _MyplaylisDraywerState createState() => _MyplaylisDraywerState();
}

class _MyplaylisDraywerState extends State<MyplaylisDraywer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading:Myicon(icon: Icons.chevron_left,size:size.width * 0.07 ,
        ontap:(){ Navigator.pop(context);} ),
        elevation: 0,
        backgroundColor: Colors.white10,
        title: Center(
            child:
            Mytextstyle(textcolor: Colors.black,
        fontsizetext: size.width * 0.05,
        text:'My Playlist',) ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 7),
            child: Myicon(icon: Icons.add,size:ScreenUtil().radius(23) ,
            ontap:(){ Navigator.pushNamed(context, '/search1');} ), )
        ],
      ),
      body: Container(
       // color: Colors.black,
          height:  size.height * 1,
          width: double.infinity,
          child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: mylist.length,
          itemBuilder: (context, index) {
          return Padding(
            padding:
          const EdgeInsets.only(bottom: 15, left: 20, right: 20),
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
          child: Stack(children: [
          Container(
            width: size.width * 0.9,
            height: size.height * 0.15,
            decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(mylist[index].image)),
        borderRadius: BorderRadius.circular(5)),
          ),
          Positioned(
      bottom: 19,
      left: 10,
      child: //,  
      Mytextstyle(textcolor: Colors.white,
        fontsizetext: size.width * 0.05,
        text:'Sport Music',)),
          Positioned(
      right: size.width * 0.01,
      child:
       IconButton(
         splashColor: Colors.white,
          hoverColor: Colors.white,
          highlightColor: Colors.white,
          focusColor: Colors.white,
          icon: Icon(
            Icons.more_horiz,
            color: Colors.white,
          ),
          onPressed: () {}),
          )
          ]),
            ),
          ); },
          ),
        ),bottomNavigationBar: musicOpened ? MyNavbar() : null,
    );
  }
}
