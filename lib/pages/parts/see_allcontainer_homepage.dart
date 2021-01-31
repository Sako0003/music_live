import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

class SeallContainer extends StatelessWidget {
  const SeallContainer({
    Key key,
    
    this.text,
    this.textn,
    this.ontap,
  }) : super(key: key);

  
  final textn;
  final text;
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.yellow,
      height: ScreenUtil().setHeight(29) ,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 18,),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(fontSize:ScreenUtil().setSp(17, allowFontScalingSelf: true), fontWeight: FontWeight.bold),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                textn,
                style: TextStyle(fontSize: ScreenUtil().setSp(17, allowFontScalingSelf: true), fontWeight: FontWeight.bold,color: Colors.black54),
              ),
            )
          ],
        ),
      ),
    );
  }
}