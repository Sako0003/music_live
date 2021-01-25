import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:grouped_list/grouped_list.dart';

import 'package:music_live/pages/home/mynavbar.dart';

bool musicOpened = true;

List _library = [
  {
    "albumId": 1,
    "id": 1,
    "title": "Flutter programindddddd dddddddddddddddd",
    "url": "https://via.placeholder.com/600/92c952",
    "thumbnailUrl":
        'https://c.files.bbci.co.uk/203A/production/_107105280_488f082d-e3bf-4f7f-b6d2-d3aa0998facb.jpg',
    "author": 'DDDDDdddddddddddddddddddDD',
    "date": '24/24/24',
    "group": 'A',
  },
  {
    "albumId": 1,
    "id": 2,
    "title": "Androi",
    "url": "https://via.placeholder.com/600/771796",
    "thumbnailUrl": "https://via.placeholder.com/150/771796",
    "author": 'DDDDDDD',
    "date": '24/24/24',
    "group": 'B',
  },
  {
    "albumId": 1,
    "id": 2,
    "title": "Androi",
    "url": "https://via.placeholder.com/600/771796",
    "thumbnailUrl": "https://via.placeholder.com/150/771796",
    "author": 'DDDDDDD',
    "date": '24/24/24',
    "group": 'B',
  },
  {
    "albumId": 1,
    "id": 2,
    "title": "Androi",
    "url": "https://via.placeholder.com/600/771796",
    "thumbnailUrl": "https://via.placeholder.com/150/771796",
    "author": 'DDDDDDD',
    "date": '24/24/24',
    "group": 'B',
  },
  {
    "albumId": 1,
    "id": 3,
    "title": "Bu group",
    "url": "https://via.placeholder.com/600/24f355",
    "thumbnailUrl": "https://via.placeholder.com/150/24f355",
    "author": 'DDDDDDD',
    "date": '24/24/24',
    "group": 'C',
  },
  {
    "albumId": 1,
    "id": 4,
    "title": "AVTOGROUP",
    "url": "https://via.placeholder.com/600/d32776",
    "thumbnailUrl": "https://via.placeholder.com/150/d32776",
    "author": 'DDDDDDD',
    "date": '24/24/24',
    "group": 'D',
  },
  {
    "albumId": 1,
    "id": 1,
    "title": "Flutter programin",
    "url": "https://via.placeholder.com/600/92c952",
    "thumbnailUrl":
        'https://c.files.bbci.co.uk/203A/production/_107105280_488f082d-e3bf-4f7f-b6d2-d3aa0998facb.jpg',
    "author": 'dfjkdshfjkds',
    "date": '24/24/24',
    "group": 'A',
  },
];

class Downloads extends StatefulWidget {
  @override
  _DownloadsState createState() => _DownloadsState();
}

class _DownloadsState extends State<Downloads> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(splashColor: Colors.white,
          hoverColor: Colors.white,
          highlightColor: Colors.white,
          focusColor: Colors.white,
            icon: Icon(
              Icons.chevron_left,
              color: Colors.black,
            size:  size.width * 0.090,
            ),
            onPressed: () {
             setState(() {
                Navigator.pop(context);
             });
            }),
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Downloads',
            style: TextStyle(color: Colors.black),
          ),
        ),actions: [IconButton(splashColor: Colors.white,
          hoverColor: Colors.white,
          highlightColor: Colors.white,
          focusColor: Colors.white,
          icon: Icon(Icons.search,color: Colors.black,), onPressed: () {
          
        },)], //bunu sonra sil
      ),
      body: Container(
       // color: Colors.pink,
        child: Stack(
          children: [
            Column(
              children: [
                
                Container(
                  height: size.height *0.05,width: double.infinity,
                  child: Row(children: [
                    SizedBox(width: size.width * 0.7+20,),
                    IconButton(splashColor: Colors.white,
          hoverColor: Colors.white,
          highlightColor: Colors.white,
          focusColor: Colors.white,
                      icon: Icon( Icons.sync,color: Colors.black,size: size.width * 0.06,), onPressed: (){}),
                    IconButton(splashColor: Colors.white,
          hoverColor: Colors.white,
          highlightColor: Colors.white,
          focusColor: Colors.white,
                      icon: Icon(Icons.shuffle_sharp,color: Colors.black,size: size.width * 0.06,), onPressed: (){}),
                  ],),
                  color:Colors.white10,
                  ),
                Container(
                  width: double.infinity,
                  height: size.height *0.8+30,
                  //  color: Colors.amber,
                  child: GroupedListView<dynamic, String>(
                    // scrollDirection: Axis.vertical,
                    elements: _library,
                    groupBy: (element) => element['group'],
                    groupSeparatorBuilder: (String groupByValue) => Padding(
                        padding: EdgeInsets.all(3),
                        child: Row(
                          children: [
                            Flexible(
                                child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: size.width * 0.04),
                                  child: Text(
                                    groupByValue,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(fontSize: size.width * 0.050),
                                  ),
                                )
                              ],
                            ))
                          ],
                        )),
                    itemBuilder: (context, dynamic element) {
                      return Card(
                        elevation: 0,
                        margin: EdgeInsets.symmetric(
                            horizontal: size.width * 0.02,
                            vertical: size.height * 0.01),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                  child: ColorFiltered(
                                colorFilter: ColorFilter.matrix(
                                  [
                                    0.2126, 0.7152, 0.0722, 0, 0,
                                    0.2126, 0.7152, 0.0722, 0,
                                    0, //this color image change(black)
                                    0.2126, 0.7152, 0.0722, 0, 0,
                                    0, 0, 0, 1, 0,
                                  ],
                                ),
                                child: Container(
                                  height: size.height * 0.075,
                                  // width: 75,
                                  child: Image(
                                    image: NetworkImage(element['thumbnailUrl']),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )),
                              Expanded(
                                flex: 5,
                                child: Container(
                                  height: size.height * 0.1 - 22,

                                  // color: Colors.pink,
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 18, right: 10),
                                        child: Text(
                                          element['title'],
                                          style: TextStyle(
                                              fontSize: size.width * 0.03 - 0.1,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black54),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10, top: 6),
                                        child: Container(
                                          //  color: Colors.amber,
                                          margin: EdgeInsets.only(left: 10),
                                          child: Text(
                                            '${element['author']}',
                                            style: TextStyle(
                                                fontSize: size.width * 0.04 + 0.01,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: size.height * 0.1 - 18,
                                width: size.width * 0.1 - 10, //color: Colors.brown,
                                child: IconButton(splashColor: Colors.white,
          hoverColor: Colors.white,
          highlightColor: Colors.white,
          focusColor: Colors.white,
                                  icon: Icon(
                                    Icons.control_point,
                                    color: Colors.black87,
                                    size: size.width * 0.060,
                                  ),
                                  onPressed: () {},
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    itemComparator: (item1, item2) =>
                        item1['title'].compareTo(item2['title']), // optional
                    useStickyGroupSeparators: true, // optional
                    floatingHeader: true, // optional
                    order: GroupedListOrder.ASC, // optional
                  ),
                ),
              ],
            ),
            musicOpened
                ? Positioned(bottom: 0, left: 0, right: 0, child: MyNavbar())
                : Container()
          ],
        ),
      ),
    );
  }
}