import 'package:flutter/material.dart';
import 'package:music_live/pages/home/music_image_container.dart';
import 'package:music_live/utils/variables.dart';

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
              // borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.4 + 17,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 7),
                  alignment: Alignment.centerLeft,
                  height: MediaQuery.of(context).size.height * 0.045,
                  width: MediaQuery.of(context).size.width * 0.8,
                  // color: Colors.black,
                  child: Text(
                    'Add To Playlist',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * 0.040,
                        color: Colors.black54),
                  ),
                ),
                Container(
                  //Liswiew container
                  // color: Colors.black,
                  alignment: Alignment.centerLeft,
                  height: MediaQuery.of(context).size.height * 0.2 + 24,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child:
                      ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: mylist.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return ColorFiltered(
                                        colorFilter:ColorFilter.matrix([
                                          0.2126, 0.7152, 0.0722, 0, 0,
                  0.2126, 0.7152, 0.0722, 0,
                  0, //this color image change(black)
                  0.2126, 0.7152, 0.0722, 0, 0,
                  0, 0, 0, 1, 0,
                                        ]) ,             child: InkWell(onTap: (){},
                                     child: Container(
                                //Add play list container
                                margin: EdgeInsets.only(bottom: 19),
                                alignment: Alignment.centerLeft,
                                height: MediaQuery.of(context).size.height * 0.092,
                                width: MediaQuery.of(context).size.width * 0.8,
                                decoration: BoxDecoration(
                                   // color: Colors.green,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(Variables.noImage)),
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                            ),
                          );
                        },
                      ),
                      
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    //New play list container
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
                          Text('New playlist',
                          style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * 0.045,
                         color: Colors.white
                          ),
                        ),
                        Icon(
                            Icons.add,color: Colors.white,size: MediaQuery.of(context).size.width * 0.059,),
                        
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
