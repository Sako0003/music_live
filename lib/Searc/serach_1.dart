

import 'package:flutter/material.dart';
import 'package:music_live/pages/home/HomeviewPage/homeview_popularcontainer.dart';
import 'package:music_live/pages/parts/myicon.dart';



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
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        backgroundColor: Colors.white10,
        elevation: 0,
        leading:Myicon(icon: Icons.chevron_left,size:size.width * 0.085 ,ontap:(){
          setState(() {
                Navigator.pop(context);
              });
        } ),
         
      ),
      body: ListView(
              children: [Container(
          //color: Colors.red,
          height: size.height * 1,
          width: double.infinity,
          child: Column(
            children: [
              Container(
                height: size.height * 0.06,
                width: size.width * 0.9+8,
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
                    suffixIcon: Icon(
                      Icons.keyboard_voice, //micrafon
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.white10,
                width: size.width * 0.9+5 ,
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
                        'Recent ',
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
                          'Clear All',
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
                          
                          height: size.height * 0.07,
               width: size.width * 0.9+6,
               decoration: BoxDecoration(
                 color: Colors.black12,borderRadius: BorderRadius.circular(10)),
               child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text(
                            'Post maole',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black54,
                                fontSize: size.width * 0.04),
                          ),
                 ),Myicon(icon: Icons.arrow_right,size:size.width * 0.090 ,ontap:(){},),
                        
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
               ] ),
    );
  }
}
