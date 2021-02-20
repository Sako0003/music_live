import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:music_live/Musicplayer/showdialoq_2musicplayer.dart';
import 'package:music_live/pages/parts/image_container.dart';
import 'package:music_live/pages/parts/my_textstyle.dart';
import 'package:music_live/utils/variables.dart';
///Bu 1 ci acilan Showdialoq
showDialoqFunc(
  context,
  /*imgage,
  metn, document,*///gelen melumat yerine class adi ve index yazmaq kifayetdir mesucun varibal[index]
) {
  return showDialog(
    context: context,
    builder: (context) {
      return Center(
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,),
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.4 + 17,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container( // color: Colors.black,
                  margin: EdgeInsets.only(bottom: 7),
                  alignment: Alignment.centerLeft,
                  height: MediaQuery.of(context).size.height * 0.045,
                  width: MediaQuery.of(context).size.width * 0.8,               
                  child:
                  Mytextstyle(
                  text:'Add To Playlist',
                   fontsizetext:ScreenUtil().setSp(17,),
                   textcolor:Colors.black54 ,), ),
                Container( // color: Colors.black,
                  //Liswiew container               
                  alignment: Alignment.centerLeft,
                  height: ScreenUtil().setHeight(160),
                  width: MediaQuery.of(context).size.width * 0.8,
                  child:
                      ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: mylist2.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Stack(
                          alignment: Alignment.center,
                            children: [
                         ImageContainer(
                 withcont: MediaQuery.of(context).size.width * 0.8,
                 heightcont:ScreenUtil().setHeight(55),
                 imageradius: 8,
                 contmarginn:EdgeInsets.only(bottom: 19),
                 imageurl: mylist2[index].imageUrl),
                 Positioned(
                left: MediaQuery.of(context).size.width * 0.025,
                child:
                 Mytextstyle(
                   fontsizetext:ScreenUtil().setSp(10,), 
                   textcolor:Colors.white,
                   text:'Learn' ,)
               )  
               , Positioned(top:MediaQuery.of(context).size.height * 0.010,
               right: MediaQuery.of(context).size.width * 0.025,
               child: Icon(Icons.more_horiz,color: Colors.white,
               size: ScreenUtil().radius(24),)),
                 ], );
                 },), 
                ),
                GestureDetector(
                  onTap: () {
                     newplaylistFunc(
                  context,); },
                  child: Container( //New play list container               
                    margin: EdgeInsets.only(bottom: 8),
                    alignment: Alignment.centerLeft,
                    height: ScreenUtil().setHeight(55),
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Mytextstyle(
                   fontsizetext:ScreenUtil().setSp(17,),
                   textcolor:Colors.white,
                   text:'New playlist' ,), 
                        Icon(Icons.add,color: Colors.white,
                            size: ScreenUtil().radius(27),),                       
                        ],), 
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
