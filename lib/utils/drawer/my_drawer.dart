import 'dart:ui';

import 'package:flutter/material.dart';

import 'my_librarycontainer.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 1,
      width: size.width * 0.5 + 5,
      child: Scaffold(
        body: Drawer(
          elevation: 0,
          child: Container(
            height: size.height * 1,
            width: size.width * 0.5 - 10,
            color: Colors.black,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 21, top: 15),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    height: size.height * 0.1,
                    width: size.width * 0.3,
                    //  color: Colors.amber,
                    child: Text(
                      'Music',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: size.width * 0.070,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                MylibraryContainer(
                  ontap: () {
                    Navigator.pushNamed(context, '/library');
                  },
                  size: size,
                  text: 'Library',
                  icon: Icons.music_note,
                ),
                //
                MylibraryContainer(
                    ontap: () {
                      Navigator.pushNamed(context, '/playlstdrawer');
                    },
                    size: size,
                    text: 'Myplaylist',
                    icon: Icons.queue_music),
                MylibraryContainer(
                    ontap: () {
Navigator.pushNamed(context, '/download');
                    },
                    size: size,
                    text: 'History',
                    icon: Icons.history),
                    MylibraryContainer(
                    ontap: () {
Navigator.pushNamed(context, '/history');
                    },
                    size: size,
                    text: 'Downloads',
                    icon: Icons.file_download),
                MylibraryContainer(
                  ontap: () {
                    Navigator.pushNamed(context, '/setting');
                  },
                  size: size,
                  text: 'Setting',
                  icon: Icons.brightness_7,
                ),
                MylibraryContainer(
                  ontap: () {
                    Navigator.pushNamed(context,  '/registr');
                  },
                  size: size,
                  text: 'Logout',
                  icon: Icons.power_settings_new,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
