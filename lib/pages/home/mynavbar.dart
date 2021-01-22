import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      decoration: BoxDecoration(
        
      //  color: Colors.pink
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
              height:
                  ScreenUtil().setHeight(89), //widget.size.height * 0.1 + 26,
              width: ScreenUtil().setWidth(83), //widget.size.width * 0.2 + 15,
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
                Container(
                  //1 num cont column
                 //  color: Colors.brown,

                  height: ScreenUtil().setHeight(39),
                  width: ScreenUtil().setWidth(252),
                  child: Column(
                    children: [SizedBox(height:  ScreenUtil().setHeight(4),),
                      Flexible(
                        child: Container(//padding: EdgeInsets.only(top: 10),
                          // color: Colors.blue,
                          alignment: Alignment.topLeft,
                         
                          width: ScreenUtil().setWidth(232),
                          child: Text(
                            'Androttttttttttttttttttttttttttyy',
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
                            'Touromusic',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: ScreenUtil()
                                    .setSp(17, allowFontScalingSelf: true),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  //2 num count column
                  //color: Colors.yellow,
                  height: ScreenUtil().setHeight(33),
                  width: ScreenUtil().setWidth(246),
                  child: Row(
                    children: [
                      Spacer(),
                      IconButton(
                        icon: Icon(
                          Icons.skip_previous,
                          size: ScreenUtil().radius(23),
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.pause_outlined,
                          size: ScreenUtil().radius(23),
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.skip_next,
                          size: ScreenUtil().radius(23),
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Container(
                  //3 num count column
                 //  color: Colors.blue,
                  alignment: Alignment.bottomLeft,

                  height: ScreenUtil().setHeight(23),
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
