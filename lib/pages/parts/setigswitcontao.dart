import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Switchlistcontanorrr extends StatelessWidget {
  const Switchlistcontanorrr({
    Key key,
    this.onchanged,
    this.text,
    this.value,
  }) : super(key: key);
  final ValueChanged<bool> onchanged;
  final String text;
  final bool value;
  @override
  Widget build(BuildContext context) {
    final  Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.topLeft,
      height: size.height * 0.057,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 10),
      // color: Colors.pink,
      child: ListTile(
        title: Container(
          padding: EdgeInsets.only(left: 5),
          alignment: Alignment.centerLeft,
          // color: Colors.green,
          height: size.height * 0.040,
          width: size.width * 0.7,
          child: Text(
            text,
            maxLines: 1,
            style: TextStyle(color: Colors.black, fontSize: size.width * 0.043),
          ),
        ),
        trailing: Container(
          height: size.height * 0.04,
          width: size.width * 0.135,
          decoration: BoxDecoration(
              border: Border.all(width: 0.8, color: Colors.black54),
              borderRadius: BorderRadius.circular(15)),
          child: CupertinoSwitch(
              activeColor: Colors.black54, value: value, onChanged: onchanged),
        ),
      ),
    );
  }
}
