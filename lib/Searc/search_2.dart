import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
//import 'package:music_live/pages/parts/image_container.dart';
import 'package:music_live/pages/parts/my_textstyle.dart';
import 'package:music_live/pages/parts/myicon.dart';
import 'package:music_live/pages/parts/see_allcontainer_homepage.dart';
import 'package:music_live/utils/variables.dart';

class Searc2page extends StatefulWidget {
  @override
  _Searc2pageState createState() => _Searc2pageState();
}


class _Searc2pageState extends State<Searc2page> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Mytextstyle(
                textcolor: Colors.black,
                text: 'Search',fontsizetext:ScreenUtil().setSp(17,), 
              )),
        ),
        backgroundColor: Colors.white10,
        elevation: 0,
        leading: Myicon(
            icon: Icons.chevron_left,
            size:ScreenUtil().radius(26),
            ontap: () {
              Navigator.pop(context);
            }),
      ),
      body: ListView(scrollDirection: Axis.vertical, children: [
        Container(
          height: size.height * 1,
          width: double.infinity,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(                   
                    height: ScreenUtil().setHeight(40),
                    width: ScreenUtil().setWidth(255),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black12,),
                      child: TextField(
                      textAlign: TextAlign.start,
                      onSubmitted: (value) {},
                      decoration: InputDecoration(
                        icon: Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Icon(
                            Icons.search,size: ScreenUtil().radius(17),
                            color: Colors.black54,
                          ),
                        ),
                        border: InputBorder.none,
                        hintText: 'Search',                       
                        hintMaxLines: 9,
                        hintStyle: TextStyle(
                            fontSize:ScreenUtil().setSp(13,), ),
                        suffixIcon: Icon(
                          Icons.close_rounded,
                          size: ScreenUtil().radius(17),
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    color: Colors.white10,
                    height: size.height * 0.05,
                    width: size.width * 0.2 - 10,
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                          color: Colors.black, fontSize: ScreenUtil().setSp(17,)),
                    ),
                  )
                ],
              ),
              SeallContainer(
                text: 'Artist',
                textn: 'See all',
                ontap: () {},
              ),
              Container(
                color:Colors.white10,
                width: ScreenUtil().setWidth(335),
                height: ScreenUtil().setHeight(543),
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: mylist.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: ScreenUtil().setHeight(55),
                         // width: ScreenUtil().setWidth(255),
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: CircleAvatar(backgroundColor: Colors.black12,
                                  radius: ScreenUtil().radius(22),
                                  backgroundImage: NetworkImage(mylist[index].image),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Container(
                                 // color: Colors.green,
                                  height: ScreenUtil().setHeight(55),
                                  width: ScreenUtil().setWidth(220),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,                                      
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 9),
                                        child: Mytextstyle(
                                          fontsizetext: ScreenUtil().setSp(14,),
                                          text: 'Album Name',
                                          textcolor: Colors.black,
                                        ),
                                      ),
                                      Flexible(
                                        child: Container(
                                           //color: Colors.amber,
                                          height: ScreenUtil().setHeight(25),
                                          width: double.infinity,
                                          child: Row(
                                            children: [
                                              Container(
                                                  alignment: Alignment.centerLeft,
                                                  height: ScreenUtil().setHeight(20),
                                                  width: size.width * 0.3,
                                                   // color: Colors.green,
                                                  child: Mytextstyle(
                                                    text: '1 Album',
                                                    fontsizetext:
                                                       ScreenUtil().setSp(12,),
                                                    textcolor: Colors.black54,
                                                  )),
                                              Container(
                                                //
                                                alignment: Alignment.centerLeft,
                                                height: ScreenUtil().setHeight(20),
                                                width: size.width * 0.3 - 5,
                                                //color: Colors.red,
                                                child: Mytextstyle(
                                                  text: '4 Song',
                                                  fontsizetext: ScreenUtil().setSp(12,),
                                                  textcolor: Colors.black54,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Myicon(
                                  icon: Icons.arrow_right,
                                  size: ScreenUtil().radius(29),
                                  ontap: () {}),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
