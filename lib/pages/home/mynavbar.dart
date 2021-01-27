import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_live/utils/variables.dart';

import 'myicon.dart';

class MyNavbar extends StatefulWidget {
  const MyNavbar({
    Key key,
  }) : super(key: key);

  @override
  _MyNavbarState createState() => _MyNavbarState();
}

class _MyNavbarState extends State<MyNavbar> {
  double music = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          ),
      child: Row(
        children: [
          ColorFiltered(
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
              margin: EdgeInsets.only(left: 22),
              height: ScreenUtil().setHeight(89),
              width: ScreenUtil().setWidth(83),
              decoration: BoxDecoration(
                //color: Colors.black,

                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(Variables.noImage),
                ),
              ),
            ),
          ),
          Container(
            // color: Colors.green,

            height: ScreenUtil().setHeight(95),
            width: ScreenUtil().setWidth(255),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 4)),
                Container(
                  //1 num cont column
                  // color: Colors.brown,

                  height: ScreenUtil().setHeight(59),
                  width: ScreenUtil().setWidth(252),
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 4)),
                      Flexible(
                        child: Container(
                          // color: Colors.blue,
                          alignment: Alignment.topLeft,

                          width: ScreenUtil().setWidth(232),
                          child: Text(
                            'Andro',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: ScreenUtil()
                                    .setSp(13, allowFontScalingSelf: true),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Flexible(
                        //inside 2 count
                        child: Container(
                          alignment: Alignment.topLeft,
                          //  color: Colors.pink,
                          height: ScreenUtil().setHeight(21),

                          width: ScreenUtil().setWidth(232),
                          child: Text(
                            'Track 5',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: ScreenUtil()
                                    .setSp(15, allowFontScalingSelf: true),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        // color: Colors.yellow,
                        height: ScreenUtil().setHeight(26),
                        width: ScreenUtil().setWidth(246),
                        child: Row(
                          children: [
                            SizedBox(
                              width: ScreenUtil().setWidth(104),
                            ),
                            Myicon(
                                icon: Icons.skip_previous,
                                size: ScreenUtil().radius(23),
                                ontap: () {}),
                            Myicon(
                                icon: Icons.pause_outlined,
                                size: ScreenUtil().radius(23),
                                ontap: () {}),
                            Myicon(
                                icon: Icons.skip_next,
                                size: ScreenUtil().radius(23),
                                ontap: () {}),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // Container(
                //   //2 num count column

                //   //color: Colors.yellow,
                //   height: ScreenUtil().setHeight(20),
                //   width: ScreenUtil().setWidth(246),
                //   child:
                // ),
                Container(
                  padding: EdgeInsets.only(top: 7),
                  //3 num count column
                  // color: Colors.blue,
                  alignment: Alignment.bottomLeft,

                  height: ScreenUtil().setHeight(28),
                  width: ScreenUtil().setWidth(247),
                  child: Slider(
                    inactiveColor: Colors.black12,
                    activeColor: Colors.black87,
                    min: 0,
                    max: 50,
                    value: music,
                    onChanged: (double newValue) {
                      setState(
                        () {
                          music = newValue;
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
