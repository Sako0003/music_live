import 'package:flutter/material.dart';

class SettingLanguageCashContainer extends StatelessWidget {
  const SettingLanguageCashContainer({
    Key key,
    @required this.size,
    this.text,
    this.ontap,
  }) : super(key: key);

  final Size size;
  final text;
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.white,
      hoverColor: Colors.white,
      highlightColor: Colors.white,
      focusColor: Colors.white,
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.only(left: 23),
        // color: Colors.amber,
        alignment: Alignment.centerLeft,
        height: size.height * 0.050,
        width: double.infinity,
        child: Text(
          text,
          maxLines: 1,
          style: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.black,
              fontSize: size.width * 0.04),
        ),
      ),
    );
  }
}