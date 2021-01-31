import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_live/pages/parts/my_textstyle.dart';
//import 'package:music_live/pages/parts/image_container.dart';
import 'package:music_live/pages/parts/myicon.dart';
import 'package:music_live/utils/variables.dart';

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
       width: double.infinity,
       height:ScreenUtil().setHeight(111),
       
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
     boxShadow: [
       BoxShadow(
         offset: Offset(0, 10),
         blurRadius: 17,
         color: Colors.black54
       )
     ],
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
              height: ScreenUtil().setHeight(80),
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
                          child: 
                          Mytextstyle(
                            text:'Andro ',textcolor:Colors.black54,
                            fontsizetext: ScreenUtil() .setSp(13, ),),
                          
                        ),
                      ),
                      Flexible(
                        //inside 2 count
                        child: Container(
                          alignment: Alignment.topLeft,
                          //  color: Colors.pink,
                          height: ScreenUtil().setHeight(21),

                          width: ScreenUtil().setWidth(232),
                          //  
                          child: Mytextstyle(
                            text:'Track 5' ,textcolor:Colors.black,
                            fontsizetext: ScreenUtil() .setSp(15, ),),
                                   
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
               
                Container(
                  padding: EdgeInsets.only(top: 7),
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