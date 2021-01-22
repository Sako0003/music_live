

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:music_live/pages/home/addPlaylistListContainer.dart.dart';
import 'package:music_live/pages/home/music_image_container.dart';
import 'package:music_live/pages/home/mynavbar.dart';
import 'package:music_live/pages/home/mypplaylist_containername.dart';
import 'package:music_live/pages/home/popular_seeall_container.dart';
import 'package:music_live/utils/drawer/my_drawer.dart';

class HomePageView extends StatefulWidget {
  @override
  _HomePageViewState createState() => _HomePageViewState();
}

//bu drayverin iconunu deyisdim rengine gore
var scaffolfkey = GlobalKey<ScaffoldState>();

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
   
    return SafeArea(
          child: Scaffold(
        key: scaffolfkey, //bu drayverin iconunu deyisdim rengine gore
        drawerScrimColor: Colors.black12,
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                scaffolfkey.currentState
                    .openDrawer(); //bu drayverin iconunu deyisdim rengine gore
              }),
          elevation: 0,
          backgroundColor: Colors.white10,
          title: Container(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'searc',
                suffixIcon: IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.black54,
                    ),
                    onPressed: () {}),
              ),
            ),
          ),
        ),
        drawer: MyDrawer(),
        body: Container(
          //  color: Colors.pink,
          height: ScreenUtil().setHeight(524) ,
          width: double.infinity,
          child: ListView(
            children: [
              PopularSeallContainer(
               
                text: 'Popular',
                textn: 'See all',
              ),
              MusicImageContainer(),
              Padding(
                padding: const EdgeInsets.only(top: 23),
                child: PopularSeallContainer(
                  
                  text: 'My playlist',
                  textn: 'See all',
                ),
              ),
              AddPlaylistListContainer(),
              SizedBox(
                height: 10,
              ),
              PopularSeallContainer(
                
                text: 'History',
                textn: 'See all',
              ),
              MyPplaylistContainerName(),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: ScreenUtil().setHeight(110),
            width: ScreenUtil().setWidth(365),//men yazdim bax buna bu with yox idi burda
            //color: Colors.red,
            child: MyNavbar(
              
            ),
          ),
        ),
      ),
    );
  }
}
