import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SocialButton extends StatelessWidget {
  const SocialButton({
    Key key,
    this.text,
    this.ontap,
  }) : super(key: key);
  final Function ontap;
  final  text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.only(top: 15),
        alignment: Alignment.center,
        height:ScreenUtil().setHeight(40),
        width: ScreenUtil().setWidth(320),
        decoration: BoxDecoration(
            color: Colors.black87,
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, 
              
              fontSize:ScreenUtil()
                            .setSp(20, allowFontScalingSelf: true)),
        ),
      ),
    );
  }
}
