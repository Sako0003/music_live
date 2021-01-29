import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:music_live/pages/home/HomeviewPage/homeview_myplaylistcont.dart';

import 'package:music_live/pages/home/HomeviewPage/homeview_popularcontainer.dart';
import 'package:music_live/pages/home/HomeviewPage/home_history_container.dart';
import 'package:music_live/pages/parts/myicon.dart';
import 'package:music_live/utils/drawer/drawerHistory/drawer_historyr.dart';


import 'package:music_live/utils/drawer/my_drawer.dart';

import 'mynavbar.dart';

class HomePageView extends StatefulWidget {
  @override
  _HomePageViewState createState() => _HomePageViewState();
}

//bu drayverin iconunu deyisdim rengine gore
var scaffolfkey = GlobalKey<ScaffoldState>();

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: scaffolfkey, //bu drayverin iconunu deyisdim rengine gore
      drawerScrimColor: Colors.black12,
      appBar: AppBar(
        leading: Myicon(
            icon: Icons.menu,
            size: ScreenUtil().radius(25),
            ontap: () {
              scaffolfkey.currentState.openDrawer(); //bu drayverin iconunu deyisdim rengine gore
            }),
        elevation: 0,
        backgroundColor: Colors.white10,
        title: Container(
          child: TextField(
            onSubmitted: (value) {
              
              Navigator.pushNamed(context, '/search2');
            },
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Search..',
              suffixIcon: Myicon(icon: Icons.search,ontap:() {} ,)
            ),
          ),
        ),
      ),
      drawer: MyDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            // color: Colors.pink,
            width: double.infinity,
            child: Column(
              children: [
             HomeViewPopularContainer(), 
               HomeVievMyplaylistContainer(),
                HomeHistoryView(),
              ],
            ),
          ),
        ),
      ),
       bottomNavigationBar: musicOpened ? MyNavbar() : null,
    );
  }
}
