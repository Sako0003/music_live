import 'package:flutter/material.dart';
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
                   fontsizetext:MediaQuery.of(context).size.width * 0.040,
                   textcolor:Colors.black54 ,), ),
                Container( // color: Colors.black,
                  //Liswiew container               
                  alignment: Alignment.centerLeft,
                  height: MediaQuery.of(context).size.height * 0.2 + 24,
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
                 heightcont:MediaQuery.of(context).size.height * 0.092,
                 imageradius: 8,
                 contmarginn:EdgeInsets.only(bottom: 19),
                 imageurl: mylist2[index].imageUrl),
                 Positioned(
                left: MediaQuery.of(context).size.width * 0.025,
                child:
                 Mytextstyle(
                   fontsizetext:MediaQuery.of(context).size.width * 0.040, 
                   textcolor:Colors.white,
                   text:'Learn' ,)
               )  
               , Positioned(top:MediaQuery.of(context).size.height * 0.010,
               right: MediaQuery.of(context).size.width * 0.025,
               child: Icon(Icons.more_horiz,color: Colors.white,
               size: MediaQuery.of(context).size.width * 0.040,)),
                 ], );
                 },), 
                ),
                GestureDetector(
                  onTap: () {
                     newplaylistFunc(
                  context,); },
                  child: Container( //New play list container               
                    margin: EdgeInsets.only(bottom: 10),
                    alignment: Alignment.centerLeft,
                    height: MediaQuery.of(context).size.height * 0.092,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Mytextstyle(
                   fontsizetext:MediaQuery.of(context).size.width * 0.045, 
                   textcolor:Colors.white,
                   text:'New playlist' ,), 
                        Icon(Icons.add,color: Colors.white,
                            size: MediaQuery.of(context).size.width * 0.059,),                       
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
