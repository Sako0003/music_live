import 'package:flutter/material.dart';

class MyDrawerlistNameContainer extends StatelessWidget {
  const MyDrawerlistNameContainer({
    Key key,
    this.text,
    this.icon,
    this.ontap,
  }) : super(key: key);
  final String text;
  final IconData icon;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    final  Size size = MediaQuery.of(context).size;
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
                size: size.width * 0.065,
                color: Colors.white,
              ),
            ),
            Container(
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width * 0.044,
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
