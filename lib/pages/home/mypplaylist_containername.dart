import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_live/utils/variables.dart';

class MyPplaylistContainerName extends StatefulWidget {
  const MyPplaylistContainerName({
    Key key,
  }) : super(key: key);

  @override
  _MyPplaylistContainerNameState createState() =>
      _MyPplaylistContainerNameState();
}

class _MyPplaylistContainerNameState extends State<MyPplaylistContainerName> {
  @override
  Widget build(BuildContext context) {
    return Container(
    //  color: Colors.green,
      height: ScreenUtil().setHeight(60), // 110,
      width: double.infinity, // widget.size.width * 1,
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
              
              margin: EdgeInsets.only(left: 20),
              width: ScreenUtil().setHeight(63),
              decoration: BoxDecoration(
              //   color: Colors.black,
                borderRadius: BorderRadius.all(
                  Radius.circular(1),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(Variables.noImage),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, ),
          //  color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Andro',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: ScreenUtil().setSp(14, allowFontScalingSelf: true),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    width:ScreenUtil().screenWidth / 2+43,

                    alignment: Alignment.topLeft,
                    //  color: Colors.pink,
                    child: Text(
                      'Touromusicckklklkmnnmbnbmnbmnbmc',
                      maxLines: 1,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: ScreenUtil().setSp(18, allowFontScalingSelf: true),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/musicplayer');
              },
              child: Container(
               // color: Colors.amber,
                margin: const EdgeInsets.only(left: 8,),
                child: Icon(
                  Icons.add_circle_outline,
                  color: Colors.black,
                  size: 29,
                ),
              )),
        ],
      ),
    );
  }
}
