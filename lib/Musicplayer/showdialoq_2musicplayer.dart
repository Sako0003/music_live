

import 'package:flutter/material.dart';

///Bu 2 ci acilan Showdialoq
newplaylistFunc(
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
            height: MediaQuery.of(context).size.height * 0.3 - 17,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 2),
                  alignment: Alignment.centerLeft,
                  height: MediaQuery.of(context).size.height * 0.045,
                  width: MediaQuery.of(context).size.width * 0.8,
                 //  color: Colors.black,
                  child: Text(
                    'New Playlist',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * 0.035,
                        color: Colors.black),
                  ),
                ),
                Container(
                 
                  // color: Colors.green,
                  alignment: Alignment.centerLeft,
                  height: MediaQuery.of(context).size.height * 0.1 - 24,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child:TextField(decoration: InputDecoration(
                   // border: InputBorder.none,
                    hintText: 'New playlist'
                  ),
                    textAlign: TextAlign.start,
                  ),
                      
                      
                ),
                GestureDetector(
                  onTap: () {
Navigator.pushNamed(context, '/search2');
                  },
                  child: Container(
                    //New play list container
                  
                    alignment: Alignment.centerLeft,
                    height: MediaQuery.of(context).size.height * 0.072,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Text('Create',
                          style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * 0.055,
                           color: Colors.white
                          ),
                          ),
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
