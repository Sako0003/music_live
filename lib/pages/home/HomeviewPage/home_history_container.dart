import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_live/pages/parts/image_container.dart';
import 'package:music_live/utils/variables.dart';

class HomeHistoryView extends StatefulWidget {
  HomeHistoryView({Key key}) : super(key: key);

  @override
  _HomeHistoryViewState createState() => _HomeHistoryViewState();
}

class _HomeHistoryViewState extends State<HomeHistoryView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // color: Colors.yellow,
            height: ScreenUtil().setHeight(29),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 18,
                right: 18,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "History",
                    style: TextStyle(
                        fontSize:
                            ScreenUtil().setSp(17, allowFontScalingSelf: true),
                        fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "See All",
                      style: TextStyle(
                          fontSize: ScreenUtil()
                              .setSp(17, allowFontScalingSelf: true),
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            //color: Colors.amber,
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: mylist.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 10),
                  // color: Colors.green,
                  height: ScreenUtil().setHeight(60),
                  width: double.infinity,
                  child: Row(
                    children: [//,//////1
                      ImageContainer(
                        withcont:ScreenUtil().setHeight(63) ,contmarginn: EdgeInsets.only(left: 20),imageradius: 1,imageurl: mylist[index].image,),
                      Container(
                        padding: EdgeInsets.only(
                          left: 10,
                        ),
                        //  color: Colors.pink,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Container(
                                width: ScreenUtil().screenWidth / 2 + 43,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Andro',
                                  maxLines: 1,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: ScreenUtil().setSp(15,
                                          allowFontScalingSelf: true),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Container(
                                width: ScreenUtil().screenWidth / 2 + 43,

                                alignment: Alignment.topLeft,
                                //  color: Colors.pink,
                                child: Text(
                                  'Touromusic',
                                  maxLines: 1,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: ScreenUtil().setSp(16,
                                          allowFontScalingSelf: true),
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
                            margin: const EdgeInsets.only(
                              left: 8,
                            ),
                            child: Icon(
                              Icons.add_circle_outline,
                              color: Colors.black,
                              size: 29,
                            ),
                          )),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

