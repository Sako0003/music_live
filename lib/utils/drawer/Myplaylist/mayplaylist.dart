import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:music_live/pages/home/music_image_container.dart';
import 'package:music_live/pages/home/myicon.dart';
import 'package:music_live/pages/home/mynavbar.dart';
import 'package:music_live/utils/drawer/History/historydraywer.dart';

//import 'package:music_live/pages/home/music_image_container.dart';

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
        leading:Myicon(icon: Icons.chevron_left,size:size.width * 0.07 ,ontap:(){ Navigator.pop(context);} ),
        
        elevation: 0,
        backgroundColor: Colors.white10,
        title: Center(
            child: Text(
          'My Playlist',
          style: TextStyle(
              fontWeight: FontWeight.bold, //'/search1'Icons.search,
              //  color: Colors.black,
              color: Colors.black,
              fontSize: size.width * 0.05),
        )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 7),
            child: Myicon(icon: Icons.search,size:ScreenUtil().radius(23) ,ontap:(){ Navigator.pushNamed(context, '/search1');} ),
            
          )
        ],
      ),
      body: Container(
        height:  size.height * 1,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
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
                            child: Text(
                              'Sport Music',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: size.width * 0.05),
                            )),
                        Positioned(
                            right: size.width * 0.01,
                            child: IconButton(
                               splashColor: Colors.white,
        hoverColor: Colors.white,
        highlightColor: Colors.white,
        focusColor: Colors.white,
                                icon: Icon(
                                  Icons.more_horiz,
                                  color: Colors.white,
                                ),
                                onPressed: () {}))
                      ]),
                    ),
                  );
                },
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(
                  left: 20, //top: 10
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    // margin: EdgeInsets.only(right: 13),
                    height: ScreenUtil().setHeight(99),
                    width: ScreenUtil().setWidth(100),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(),
                        Icon(
                          Icons.add,
                          color: Colors.white,
                          size: ScreenUtil().radius(25),
                        ),
                        Text(
                          'Add Playlist',
                          style: TextStyle(
                            color: Colors.white54,
                            fontWeight: FontWeight.bold,
                            fontSize: ScreenUtil()
                                .setSp(14, allowFontScalingSelf: true),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),bottomNavigationBar: musicOpened ? MyNavbar() : null,
    );
  }
}
