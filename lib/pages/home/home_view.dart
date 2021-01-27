import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:music_live/pages/home/addPlaylistListContainer.dart.dart';
import 'package:music_live/pages/home/music_image_container.dart';
import 'package:music_live/pages/home/mynavbar.dart';
import 'package:music_live/pages/home/mypplaylist_containername.dart';
import 'package:music_live/pages/home/popular_seeall_container.dart';
import 'package:music_live/utils/drawer/my_drawer.dart';

import 'myicon.dart';

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
          leading: Myicon(
              icon: Icons.menu,
              size: ScreenUtil().radius(25),
              ontap: () {
                scaffolfkey.currentState
                    .openDrawer(); //bu drayverin iconunu deyisdim rengine gore
              }),
          elevation: 0,
          backgroundColor: Colors.white10,
          title: Container(
            child: TextField(
              onSubmitted: (value) {
                Navigator.pushNamed(context, '/library');
                Navigator.pushNamed(context, '/musicplayer');
                Navigator.pushNamed(context, '/search1');
                Navigator.pushNamed(context, '/search2');
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'searc',
                suffixIcon: IconButton(
                 // focusColor: Colors.white,
                 // disabledColor: Colors.white,
                 //  highlightColor: Colors.white,
                  // hoverColor: Colors.white,
                  // splashColor: Colors.white,
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
          height: ScreenUtil().setHeight(524),
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
            width: ScreenUtil()
                .setWidth(365), //men yazdim bax buna bu with yox idi burda
            //color: Colors.red,
            child: MyNavbar(),
          ),
        ),
      ),
    );
  }
}
