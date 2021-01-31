import 'package:flutter/material.dart';

class Mytextstyle extends StatelessWidget {
  const Mytextstyle({
    Key key,
   // @required this.size,
    this.textcolor,
    this.fontsizetext, this.text,
  }) : super(key: key);

  //final Size size;
  final Color textcolor;
  final double fontsizetext;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        textAlign: TextAlign.start,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: textcolor, //
          fontSize: fontsizetext, //),
        ));
  }
}
