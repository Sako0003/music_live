import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'music_image_container.dart';

class AddPlaylistListContainer extends StatefulWidget {
  const AddPlaylistListContainer({
    Key key,
  }) : super(key: key);

  @override
  _AddPlaylistListContainerState createState() =>
      _AddPlaylistListContainerState();
}

class _AddPlaylistListContainerState extends State<AddPlaylistListContainer> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: ScreenUtil().setHeight(109),
          width: ScreenUtil().setWidth(250),
          // color: Colors.amber,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(
                  mylist.length,
                  (index) => ColorFiltered(
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
                      height: ScreenUtil().setHeight(99),
                      width: ScreenUtil().setWidth(100), //* 0.3 - 15,
                      decoration: BoxDecoration(
                        // color: Colors.black,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(mylist[index].image),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
           
          },
          child: Container(
            margin: EdgeInsets.only(right: 13),
            height: ScreenUtil().setHeight(99),
            width: ScreenUtil().setWidth(100),
            decoration: BoxDecoration(
              color: Colors.black87,
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
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize:
                        ScreenUtil().setSp(14, allowFontScalingSelf: true),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
