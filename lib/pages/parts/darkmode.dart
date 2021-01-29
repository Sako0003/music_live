import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DarkModeCont extends StatefulWidget {
  const DarkModeCont({
    Key key,
    @required this.size,
  }) : super(key: key);
  final Size size;
  @override
  _DarkModeContState createState() => _DarkModeContState();
}

class _DarkModeContState extends State<DarkModeCont> {
  bool darkmode = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [Divider(
              color: Colors.black,
              height: size.height * 0.02,
            ),
        Container(
          alignment: Alignment.topLeft,
          height: widget.size.height * 0.057,
          width: double.infinity,
          margin: EdgeInsets.only(bottom: 10),
          // color: Colors.pink,
          child: ListTile(
            title: Container(
              padding: EdgeInsets.only(left: 5),
              alignment: Alignment.centerLeft,
              // color: Colors.green,
              height: widget.size.height * 0.040,
              width: widget.size.width * 0.7,
              child: Text(
        'Dark mode',
        maxLines: 1,
        style: TextStyle(fontWeight: FontWeight.bold,
          color: Colors.black, fontSize: widget.size.width * 0.050),
              ),
            ),
            trailing: Container(
              
              height: widget.size.height * 0.04,
              width: widget.size.width * 0.135,
              decoration: BoxDecoration(
          border: Border.all(
            width: 0.8,
            color: Colors.black54
          ),
          borderRadius: BorderRadius.circular(15)),
              child: CupertinoSwitch(
        activeColor: Colors.black54,
        value: darkmode,
        onChanged: (val) {
            setState(() {
              darkmode = val;
            });
            if (darkmode) {
              

            } 
          },
              ),
            ),
          ),
        ),Divider(
              color: Colors.black,
              height: size.height * 0.02,
            ),
      ],
    );
  }
}






