import 'package:flutter/material.dart';

class SettingConnectionTextCont extends StatelessWidget {
  const SettingConnectionTextCont({
    Key key,
    @required this.size,
    this.text,
    this.fontSize,
    this.fonweight,
  }) : super(key: key);

  final Size size;
  final text;
  final double fontSize;
  final FontWeight fonweight;
  @override
  Widget build(BuildContext context) {
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
