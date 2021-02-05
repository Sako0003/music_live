import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_screenutil/screenutil.dart';

class SesartiranCont extends StatefulWidget {
  final AudioPlayer audioPlayer;
  SesartiranCont({Key key, this.audioPlayer}) : super(key: key);

  @override
  _SesartiranContState createState() => _SesartiranContState();
}

class _SesartiranContState extends State<SesartiranCont> {
  double _sliderVolume;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      //color: Colors.amber,
       alignment: Alignment.bottomCenter,
      height:ScreenUtil().setHeight(80),
      width: size.width * 0.9, //color: Colors.blue,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: [
          Container(
            child: IconButton(
                splashColor: Colors.white,
                hoverColor: Colors.white,
                highlightColor: Colors.white,
                focusColor: Colors.white,
                icon: Icon(
                  Icons.volume_mute,
                  color: Colors.black45,
                  size: ScreenUtil().radius(24),
                ),
                onPressed: () => widget.audioPlayer.setVolume(0)),
          ),
          Container(
           // color: Colors.amber,
            height: size.height * 0.03,
            width: size.width * 0.75,
            child: SliderTheme(
              data: SliderThemeData(
                  trackHeight: 1.5,
                  thumbShape: RoundSliderThumbShape(
                    enabledThumbRadius: 5,
                  )),
              child: Slider(
                //bunu test ed teze yazdinn
                 min: 0,
                 max: 20,
                inactiveColor: Colors.black12,
                activeColor: Colors.black87,
                value: _sliderVolume ?? 0,
                onChanged: (value) async {
                  setState(() {
                    _sliderVolume = value;
                  });
                  widget.audioPlayer.setVolume(value);
                },
              ),
            ),
          ),
          Container(
            child: Icon(
              Icons.volume_up,
              color: Colors.black45,
              size: ScreenUtil().radius(24),
            ),
          ),
        ],
      ),
    );
  }
}
