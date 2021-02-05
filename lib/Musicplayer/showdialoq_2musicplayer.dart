import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:music_live/pages/parts/my_textstyle.dart';
///Bu 2 ci acilan Showdialoq
newplaylistFunc(
  context,
  /*imgage,
  metn, document,*///gelen melumat yerine class adi ve index yazmaq kifayetdir mesucun varibal[index]
) {
  final textControllerr = TextEditingController();
  return showDialog(
    context: context,
    builder: (context) {
      return Center(
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.3 - 17,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(  //  color: Colors.black,
                  margin: EdgeInsets.only(bottom: 2),
                  alignment: Alignment.centerLeft,
                  height: MediaQuery.of(context).size.height * 0.045,
                  width: MediaQuery.of(context).size.width * 0.8,              
                  child:
                   Mytextstyle(
                  text: 'New Playlist',
                   fontsizetext:ScreenUtil().setSp(22,), 
                   textcolor:Colors.black ,
                   ),
                ),
                Container(// color: Colors.green,
            alignment: Alignment.centerLeft,
                  height: MediaQuery.of(context).size.height * 0.1 - 24,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child:TextField(
                    onSubmitted: (value) {
                    textControllerr.clear();},
                    controller:textControllerr ,
                    decoration: InputDecoration(
                    hintText: 'New playlist'
                  ),
                    textAlign: TextAlign.start,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                  Navigator.pushNamed(context, '/search2');},
                  child: Container(
                    alignment: Alignment.centerLeft,
                    height: MediaQuery.of(context).size.height * 0.072,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Mytextstyle(text:'Create',
                          fontsizetext:ScreenUtil().setSp(22,), 
                          textcolor:Colors.white,
                          )
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
