import 'package:flutter/material.dart';

class MylibraryContainer extends StatelessWidget {
  const MylibraryContainer({
    Key key,
    @required this.size,
    this.text,
    this.icon,
    this.ontap,
  }) : super(key: key);

  final Size size;
  final text;
  final IconData icon;
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: size.height * 0.1 - 35,
        width: size.width * 0.3 + 25,
        // color: Colors.green,
        child: Row(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              // color: Colors.amber,
              width: size.width * 0.1 + 2,
              height: size.height * 0.1 - 10,
              child: Icon(
                icon,
                size: size.width *0.065,
                color: Colors.white,
              ),
            ),
            Container(
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width *0.044,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
