import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:music_live/pages/parts/my_textstyle.dart';
import 'package:music_live/pages/parts/myicon.dart';
import 'package:music_live/utils/variables.dart';

class Searc1page extends StatefulWidget {
  @override
  _Searc1pageState createState() => _Searc1pageState();
}

class _Searc1pageState extends State<Searc1page> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Text(
              'Search',
              style: TextStyle(color: Colors.black,fontSize:ScreenUtil().setSp(18,) ),
            ),
          ),
        ),
        backgroundColor: Colors.white10,
        elevation: 0,
        leading: Myicon(
            icon: Icons.chevron_left,
            size: ScreenUtil().radius(29),
            ontap: () {
              setState(() {
                Navigator.pop(context);
              });
            }),
      ),
      body: ListView(children: [
        Container(
          //color: Colors.red,
          height: size.height * 1,
          width: double.infinity,
          child: Column(
            children: [
              Container(
                height: size.height * 0.06,
                width: size.width * 0.9 + 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black12,
                ),
                child: TextField(
                  textAlign: TextAlign.start,
                  onSubmitted: (value) {
                    /// axdardigin list
                    /// Navigator,pushnamed(con,route named)
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search',
                    hintMaxLines: 9,
                        hintStyle: TextStyle(
                            fontSize:ScreenUtil().setSp(13,),),
                    suffixIcon: Icon(
                      Icons.keyboard_voice, 
                      size: ScreenUtil().radius(23),
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.white10,
                width: size.width * 0.9 + 5,
                height: size.height * 0.07,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        alignment: Alignment.centerLeft,
                        // color: Colors.pink,
                        width: size.width * 0.5,
                        height: size.height * 0.07,
                        child: Mytextstyle(
                          textcolor: Colors.black,
                          text: 'Recent ',
                          fontsizetext: ScreenUtil().setSp(18,)
                        )),
                    InkWell(
                      onTap: () {},
                      child: Container(
                          //color: Colors.brown,
                          width: size.width * 0.2 + 10,
                          height: size.height * 0.07,
                          alignment: Alignment.centerRight,
                          child: Mytextstyle(
                            textcolor: Colors.black54,
                            text: 'Clear All',
                            fontsizetext:ScreenUtil().setSp(15,)
                          )),
                    )
                  ],
                ),
              ),
              Container(
                color:Colors.white10,
                width: ScreenUtil().setWidth(333),
                height:  ScreenUtil().setHeight(524),
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: mylist.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: ScreenUtil().setHeight(50),
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Mytextstyle(
                                  textcolor: Colors.black54,
                                  text: 'Post maole ',
                                  fontsizetext: ScreenUtil().setSp(15,)
                                ),
                              ),
                              Myicon(                               
                                icon: Icons.arrow_right,
                                size:ScreenUtil().radius(33),
                                ontap: () {},
                              ),
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
