import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_live/pages/parts/my_textstyle.dart';
import 'package:music_live/pages/parts/social_button.dart';

class RegistrationView extends StatefulWidget {
  @override
  _RegistrationViewState createState() => _RegistrationViewState();
}

class _RegistrationViewState extends State<RegistrationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 60),
                alignment: Alignment.center,
                width: ScreenUtil().setWidth(190),
                height: ScreenUtil().setHeight(180),
                color: Colors.black87,
                child: //
                    Mytextstyle(
                  fontsizetext: ScreenUtil().setSp(40),
                  text: 'Mejx',
                  textcolor: Colors.white,
                ),
              ),
              SocialButton(
                ontap: () {
                  Navigator.pushNamed(context, '/main_page');
                },
                text: 'Facebook',
              ),
              SocialButton(
                ontap: () {},
                text: 'Google',
              ),
              SocialButton(
                ontap: () {},
                text: 'Apple ID',
              )
            ],
          ),
        ),
      ),
    );
  }
}
