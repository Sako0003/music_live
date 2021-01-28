import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Mylist {
  String image;
  //String name;
  Mylist(this.image,
  );
}

List<Mylist> mylist = [
  Mylist(//'Andreo',
        'https://c.files.bbci.co.uk/203A/production/_107105280_488f082d-e3bf-4f7f-b6d2-d3aa0998facb.jpg',
  ),
  Mylist(//'Veli',
      'https://c.files.bbci.co.uk/203A/production/_107105280_488f082d-e3bf-4f7f-b6d2-d3aa0998facb.jpg',
  ),
  Mylist(//'Cake',
      'https://c.files.bbci.co.uk/203A/production/_107105280_488f082d-e3bf-4f7f-b6d2-d3aa0998facb.jpg',
  ),
   Mylist(//'Cake',
      'https://c.files.bbci.co.uk/203A/production/_107105280_488f082d-e3bf-4f7f-b6d2-d3aa0998facb.jpg',
  ),Mylist(//'Cake',
      'https://c.files.bbci.co.uk/203A/production/_107105280_488f082d-e3bf-4f7f-b6d2-d3aa0998facb.jpg',
  ),Mylist(//'Cake',
      'https://c.files.bbci.co.uk/203A/production/_107105280_488f082d-e3bf-4f7f-b6d2-d3aa0998facb.jpg',
  ),
   Mylist(//'Cake',
      'https://c.files.bbci.co.uk/203A/production/_107105280_488f082d-e3bf-4f7f-b6d2-d3aa0998facb.jpg',
  ),Mylist(//'Cake',
      'https://c.files.bbci.co.uk/203A/production/_107105280_488f082d-e3bf-4f7f-b6d2-d3aa0998facb.jpg',
  ),
   Mylist(//'Cake',
      'https://c.files.bbci.co.uk/203A/production/_107105280_488f082d-e3bf-4f7f-b6d2-d3aa0998facb.jpg',
  ),
];

class MusicImageContainer extends StatelessWidget {
  const MusicImageContainer({
    Key key,
    
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
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
              margin: EdgeInsets.only(left: 20),
              height:ScreenUtil().setHeight(210),
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
    );
  }
}
