import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

class MyDrawerlistNameContainer extends StatelessWidget {
  const MyDrawerlistNameContainer({
    Key key,
    this.text,
    this.icon,
    this.ontap, this.contheight, this.contwidth,
  }) : super(key: key);
  final String text;
  final IconData icon;
  final VoidCallback ontap;
  final double contheight;
  final double contwidth;
  @override
  Widget build(BuildContext context) {
   // final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: InkWell(
        onTap: ontap,
        child: Container(
          height:contheight,// size.height * 0.1 - 35,
          width:contwidth,// size.width * 0.3 + 25,
          //color: Colors.green,
          child: Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.centerLeft,
               // color: Colors.pink,
                //width: size.width * 0.1 + 2,
               // height: size.height * 0.1 - 10,
                child: Icon(
                  icon,
                  size: ScreenUtil().radius(25),
                  color: Colors.white,
                ),
              ),
              Container(padding: EdgeInsets.only(left: 10),
                child: Text(
                  text,
                  softWrap: true,
                 overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: ScreenUtil().setSp(17,),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
