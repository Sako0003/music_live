import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:music_live/pages/parts/image_container.dart';
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
            child: Mytextstyle( textcolor: Colors.black,text: 'Search',)
          ),
        ),
        backgroundColor: Colors.white10,
        elevation: 0,
        leading: Myicon(
            icon: Icons.chevron_left,
            size: size.width * 0.085,
            ontap: () {
              setState(() {
                Navigator.pop(context);
              });
            }),
      ),
      body: ListView(scrollDirection: Axis.vertical, children: [
        Container(
          //color: Colors.red,
          height: size.height * 1,
          width: double.infinity,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: size.height * 0.06,
                    width: size.width * 0.7, //+10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black12,
                    ),

                    child: TextField(
                      textAlign: TextAlign.start,
                      onSubmitted: (value) {},
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.search,
                          color: Colors.black54,
                        ),
                        border: InputBorder.none,
                        hintText: 'Search',
                        suffixIcon: Icon(
                          Icons.close_rounded, //micrafon
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
                          color: Colors.black, fontSize: size.width * 0.1 - 20),
                    ),
                  )
                ],
              ),
              SeallContainer(
                text: 'Artist',
                textn: 'Se all',
                ontap: () {},
              ),
              Container(
                color: Colors.white10,
                width: size.width * 0.9 + 6,
                height: size.height * 0.7 + 45,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: mylist.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: size.height * 0.08,
                          width: size.width * 0.9 + 6,
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: CircleAvatar(
                                  radius: 25,
                                  child: ImageContainer(
                                      imageradius: 30,
                                      withcont: size.width * 0.2,
                                      heightcont: size.height * 0.1 - 25,
                                      imageurl: mylist[index].image),
                                ),
                              ),
                              Container(
                                //color: Colors.red,
                                height: size.height * 0.06,
                                width: size.width * 0.5 + 35,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                   Mytextstyle(
                                   fontsizetext:size.width * 0.04,
                                   text: 'Album Name',
                                    textcolor:Colors.black,
                                   ),
                                    Flexible(
                                      child: Container(
                                        // color: Colors.amber,
                                        height: size.height * 0.03 + 10,
                                        width: double.infinity,
                                        child: Row(
                                          children: [
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              height: size.height * 0.03,
                                              width: size.width * 0.3,
                                              //  color: Colors.green,
                                              child: Mytextstyle(
                                                text:'1 Album' ,
                                                fontsizetext:size.width * 0.03,
                                                textcolor:Colors.black54,
                                                )
                                            ), 
                                            Container(//  
                                              alignment: Alignment.centerLeft,
                                              height: size.height * 0.03,
                                              width: size.width * 0.3 - 5,
                                              //color: Colors.red,
                                              child: Mytextstyle(
                                                 text: '4 Song',
                                                 fontsizetext:size.width * 0.03 ,
                                                 textcolor:Colors.black54,
                                                ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Myicon(
                                  icon: Icons.arrow_right,
                                  size: size.width * 0.090,
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

