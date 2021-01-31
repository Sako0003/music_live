import 'package:flutter/material.dart';
class SettingConnectionTextCont extends StatelessWidget {
  const SettingConnectionTextCont({
    Key key,
    this.text,
    this.fontSize,
  }) : super(key: key);
  final String text;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
     final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(left: 20),
      alignment: Alignment.centerLeft,
      height: size.height * 0.050,
      width: double.infinity,
      //  color: Colors.red,
      child: Text(
        text,
        maxLines: 1,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: size.width * 0.05),
      ),
    );
  }
}
