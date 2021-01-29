import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_live/pages/parts/see_allcontainer.dart';

import 'homeview_popularcontainer.dart';

class HomeVievMyplaylistContainer extends StatefulWidget {
  const HomeVievMyplaylistContainer({
    Key key,
  }) : super(key: key);

  @override
  _HomeVievMyplaylistContainerState createState() => _HomeVievMyplaylistContainerState();
}

class _HomeVievMyplaylistContainerState extends State<HomeVievMyplaylistContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SeallContainer(
                    ontap: (){},
                    text: 'My playlist',
                    textn: 'See all',
                  ),
                ),
        Row(
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
                             color: Colors.pink,
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
              onTap: () {},
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
                   // Container(),
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
                        fontSize: ScreenUtil().setSp(14, allowFontScalingSelf: true),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
