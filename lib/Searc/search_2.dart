
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:music_live/pages/home/music_image_container.dart';
import 'package:music_live/pages/home/myicon.dart';


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
            child: Text(
              'Search',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        backgroundColor: Colors.white10,
        elevation: 0,
        leading:Myicon(icon:Icons.chevron_left,size:size.width * 0.085 ,ontap:(){
          setState(() {
                Navigator.pop(context);
              });
        } ),
         
      ),
      body: ListView(scrollDirection: Axis.vertical,
              children:[ Container(
          //color: Colors.red,
          height: size.height * 1,
          width: double.infinity,
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: size.height * 0.06,
                    width: size.width * 0.7+10,
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
                      decoration: InputDecoration(icon: Icon(Icons.search,color: Colors.black54,),
                        border: InputBorder.none,
                        hintText: 'Search',
                        suffixIcon: Icon(
                          Icons.close_rounded, //micrafon
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),Container(alignment: Alignment.center,
                    color: Colors.white10,
                    height: size.height * 0.05,width: size.width * 0.2-10 ,
                    child: Text('Cancel',style:  TextStyle(color: Colors.black,fontSize: size.width * 0.1 - 20),),)
                ],
              ),
              Container(
                color: Colors.white10,
                width: size.width * 0.9 + 1,
                height: size.height * 0.07,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                     // color: Colors.pink,
                      width: size.width * 0.5,
                      height: size.height * 0.07,
                      child: Text(
                        'Artist ',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        //softWrap: false,

                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: size.width * 0.1 - 20),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        //color: Colors.brown,
                        width: size.width * 0.2 + 10, height: size.height * 0.07,
                        alignment: Alignment.centerRight,
                        child: Text(
                          'See All',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                              fontSize: size.width * 0.04),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.white10,
                width: size.width * 0.9+6,
                height: size.height * 0.7 + 45,
                child: ListView.builder(
                   scrollDirection: Axis.vertical,
                  itemCount: mylist.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: InkWell(onTap: () {
                        
                      },
                                            child: Container(
                          
                          height: size.height * 0.08,
               width: size.width * 0.9+6,
               decoration: BoxDecoration(
                 color: Colors.black12,borderRadius: BorderRadius.circular(10)),
               child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [Container(height: size.height * 0.1-25,width: size.width *0.2,
                   //color: Colors.black,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(mylist[index].image),),      
                 ),

                 Container(//color: Colors.red,
                   height: size.height * 0.06,
                 width:  size.width * 0.5+35,
                   child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(
                                'Album Name',maxLines: 1,textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: size.width * 0.04),
                              ),Row(
                                
                                children: [
                                  Text(
                                    '1544444 Album',maxLines: 1,textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54,
                                        fontSize: size.width * 0.03),
                                  ), SizedBox(width: size.width * 0.01),Text(
                                    '45444444444 Song',maxLines: 1,textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54,
                                        fontSize: size.width * 0.03),
                                  ),
                                ],
                              ),
                     ],
                   ),
                 ),
                        Myicon(icon: Icons.arrow_right,size:size.width * 0.090 ,ontap:(){} ),
               ],),
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
