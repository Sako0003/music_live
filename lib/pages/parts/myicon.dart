import 'package:flutter/material.dart';

class Myicon extends StatelessWidget {
  const Myicon({
    Key key,
    this.icon,
    this.size,
    this.ontap,
  }) : super(key: key);
  final IconData icon;
  final double size;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        splashColor: Colors.white,
        hoverColor: Colors.white,
        highlightColor: Colors.white,
        focusColor: Colors.white,
        icon: Icon(
          icon,
          color: Colors.black,
          size: size,
        ),
        onPressed: ontap);
  }
}
