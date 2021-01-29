import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    Key key, this.imageurl, this.imageradius, this.withcont, this.contmarginn, this.heightcont,
  }) : super(key: key);
  final String imageurl;
  final double imageradius;
  final double withcont;
  final EdgeInsetsGeometry contmarginn;
  final double heightcont;
  @override
  Widget build(BuildContext context) {
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
        height: heightcont,
        margin: contmarginn, 
        width: withcont, 
        decoration: BoxDecoration(
          //   color: Colors.black,
          borderRadius: BorderRadius.all(
            Radius.circular(imageradius), //1
          ),
          image: DecorationImage(
            fit: BoxFit.cover, 
            image: NetworkImage(imageurl),
          ),
        ),
      ),
    );
  }
}//navbar
  // ImageContainer(
          //   withcont:ScreenUtil().setWidth(83) ,
          //   imageurl:Variables.noImage ,
          //   heightcont:ScreenUtil().setHeight(80) ,
          //   contmarginn:EdgeInsets.only(left: 22) ,),