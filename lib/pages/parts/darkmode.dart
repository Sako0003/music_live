import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_live/pages/parts/my_textstyle.dart';

class DarkModeCont extends StatefulWidget {
  
  @override
  _DarkModeContState createState() => _DarkModeContState();
}

class _DarkModeContState extends State<DarkModeCont> {
  bool darkmode = false;
  @override
  Widget build(BuildContext context) {
  final  Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Divider(
          color: Colors.black,
          height: size.height * 0.02,
        ),
        Container(
          alignment: Alignment.topLeft,
          height:size.height * 0.057,
          width: double.infinity,
          margin: EdgeInsets.only(bottom: 10),
          // color: Colors.pink,
          child: ListTile(
            title: Container(
              padding: EdgeInsets.only(left: 5),
              alignment: Alignment.centerLeft,
              // color: Colors.green,
              height: size.height * 0.040,
              width:size.width * 0.7,
              child:
                  //,
                  Mytextstyle(
                fontsizetext: size.width * 0.050,
                text: 'Dark mode',
                textcolor: Colors.black,
              ),
            ),
            trailing: Container(
              height: size.height * 0.04,
              width:size.width * 0.135,
              decoration: BoxDecoration(
                  border: Border.all(width: 0.8, color: Colors.black54),
                  borderRadius: BorderRadius.circular(15)),
              child: CupertinoSwitch(
                activeColor: Colors.black54,
                value: darkmode,
                onChanged: (val) {
                  setState(() {
                    darkmode = val;
                  });
                  if (darkmode) {}
                },
              ),
            ),
          ),
        ),
        Divider(
          color: Colors.black,
          height: size.height * 0.02,
        ),
      ],
    );
  }
}
