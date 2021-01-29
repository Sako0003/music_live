import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_live/pages/parts/see_allcontainer_homepage.dart';
import 'package:music_live/utils/variables.dart';
class HomeViewPopularContainer extends StatelessWidget {
  const HomeViewPopularContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [SeallContainer(
                  text: 'Popular',
                  textn: 'See all',
                ),
        Container(
         //  color: Colors.amber,
          height: ScreenUtil().setHeight(210),
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: mylist.length,
            itemBuilder: (context, index) {
              return ColorFiltered(
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
                  margin: EdgeInsets.only(left: 18),
                  height: ScreenUtil().setHeight(210),
                  width: ScreenUtil().setWidth(190),
                  decoration: BoxDecoration(
                    // color: Colors.black,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(mylist[index].image),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
