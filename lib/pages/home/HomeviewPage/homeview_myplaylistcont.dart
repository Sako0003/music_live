import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_live/pages/parts/image_container.dart';
import 'package:music_live/pages/parts/my_textstyle.dart';
import 'package:music_live/pages/parts/see_allcontainer_homepage.dart';
import 'package:music_live/utils/variables.dart';




class HomeVievMyplaylistContainer extends StatefulWidget {
  const HomeVievMyplaylistContainer({
    Key key,
  }) : super(key: key);

  @override
  _HomeVievMyplaylistContainerState createState() =>
      _HomeVievMyplaylistContainerState();
}

class _HomeVievMyplaylistContainerState
    extends State<HomeVievMyplaylistContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SeallContainer(
            ontap: () {},
            text: 'My playlist',
            textn: 'See all',
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: ScreenUtil().setHeight(109),
              width: ScreenUtil().setWidth(250),
              // color: Colors.amber,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                        mylist2.length,
                        (index) => ImageContainer(
                              withcont: ScreenUtil().setWidth(100),
                              imageradius: 10,
                              imageurl: mylist2[index].imageUrl,
                              heightcont: ScreenUtil().setHeight(99),
                              contmarginn: EdgeInsets.only(left: 20),
                            ),),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.only(right: 13),
                height: ScreenUtil().setHeight(99),
                width: ScreenUtil().setWidth(100),
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Container(),
                    Icon(
                      Icons.add,
                      color: Colors.white,
                      size: ScreenUtil().radius(25),
                    ), //,
                    Mytextstyle(
                      fontsizetext: ScreenUtil().setSp(
                        14,
                      ),
                      textcolor: Colors.white,
                      text: 'Add Playlist',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
