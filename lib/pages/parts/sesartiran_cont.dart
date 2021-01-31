import 'package:flutter/material.dart';

class SesartiranCont extends StatefulWidget {
  @override
  _SesartiranContState createState() => _SesartiranContState();
}

class _SesartiranContState extends State<SesartiranCont> {
  double musict = 0.0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container( //color: Colors.amber,
      margin: EdgeInsets.only(top: 5),
     alignment: Alignment.bottomLeft,
      height: size.height * 0.1 - 47,
      width: size.width * 0.9 - 27, //color: Colors.blue,
      child: Flex(
        direction: Axis.horizontal,
        children: [
          Expanded(
            flex: 1,
            child: Icon(
              Icons.volume_mute,
              color: Colors.black45,
              size: size.width * 0.065,
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              child: Slider(
                inactiveColor: Colors.black12,
                activeColor: Colors.black87,
                min: 0,
                max: 50,
                value: musict,
                onChanged: (double newValue) {
                  setState(
                    () {
                      musict = newValue;
                    },
                  );
                },
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Icon(
              Icons.volume_up,
              color: Colors.black45,
              size: size.width * 0.065,
            ),
          ),
        ],
      ),
    );
  }
}
