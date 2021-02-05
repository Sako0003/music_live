import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_live/Musicplayer/slider_playercontainer.dart';
import 'package:music_live/pages/parts/image_container.dart';
import 'package:music_live/pages/parts/my_textstyle.dart';
import 'package:music_live/utils/variables.dart';

//import 'package:music_live/utils/variables.dart';


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
                left: 20,
                right: 18,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Mytextstyle(
                    textcolor: Colors.black,
                    text: "History",
                    fontsizetext: ScreenUtil().setSp(
                      17,
                    ),
                  ),
                  InkWell(
                    //,,
                    onTap: () {},
                    child: Mytextstyle(
                      textcolor: Colors.black54,
                      text: "See All",
                      fontsizetext: ScreenUtil().setSp(17,),
                    ),
                  )
                ],
              ), //
            ),
          ),
          Container(
            width: double.infinity,
            //color: Colors.amber,
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: mylist2.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 10),
                  // color: Colors.green,
                  height: ScreenUtil().setHeight(60),
                  width: double.infinity,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ImageContainer(
                        withcont: ScreenUtil().setHeight(63),
                        contmarginn: EdgeInsets.only(left: 20),
                        imageradius: 1,
                        imageurl: mylist2[index].imageUrl,
                      ),
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
                                  child: Mytextstyle(
                                    textcolor: Colors.black54,
                                    text: 'Andro',
                                    fontsizetext: ScreenUtil().setSp(15,),
                                    )),),
                            Flexible(
                              //Colors.black,
                              child: Container(
                                  width: ScreenUtil().screenWidth / 2 + 43,
                                  alignment: Alignment.topLeft,
                                  // color: Colors.pink,
                                  child: Mytextstyle(
                                    fontsizetext: ScreenUtil().setSp(
                                      16,
                                    ),
                                    textcolor: Colors.black,
                                    text: 'Touromusic',
                                  )),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                          onTap: () {                          
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return SliderPlayercontainer(
                                  song: mylist2[index],
                                );
                              },
                            ));
                          },
                          child: Container(
                            padding: EdgeInsets.only(right: 17),
                            
                            child: Icon(
                              Icons.add_circle_outline,
                              color: Colors.black,
                              size: ScreenUtil().radius(27),
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
