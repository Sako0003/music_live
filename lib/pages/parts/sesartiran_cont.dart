import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class SesartiranCont extends StatefulWidget {
  final AudioPlayer audioPlayer;
  SesartiranCont({Key key, this.audioPlayer}) : super(key: key);

  @override
  _SesartiranContState createState() => _SesartiranContState();
}

class _SesartiranContState extends State<SesartiranCont> {
  double _sliderVolume;

  //
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      //color: Colors.amber,
      // alignment: Alignment.bottomLeft,
      height: size.height * 0.1 - 37,
      width: size.width * 0.9, //color: Colors.blue,
      child: Flex(
        direction: Axis.horizontal,
        children: [
          Expanded(
              flex: 1,
              child: IconButton(
                  splashColor: Colors.white,
                  hoverColor: Colors.white,
                  highlightColor: Colors.white,
                  focusColor: Colors.white,
                  icon: Icon(
                    Icons.volume_mute,
                    color: Colors.black45,
                    size: size.width * 0.060,
                  ),
                  onPressed: () => widget.audioPlayer.setVolume(0))),
          Container(
            height: size.height * 0.03,
            width: size.width * 0.75,
            child: SliderTheme(
              data: SliderThemeData(
                  trackHeight: 1.5,
                  thumbShape: RoundSliderThumbShape(
                    enabledThumbRadius: 6,
                  )),
              child: Slider(
                // min: 0,
                // max: 20,
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
          Expanded(
            flex: 1,
            child: Icon(
              Icons.volume_up,
              color: Colors.black45,
              size: size.width * 0.060,
            ),
          ),
        ],
      ),
    );
  }
}






// import 'package:audio_manager/audio_manager.dart';
// import 'package:flutter/material.dart';

// class SesartiranCont extends StatefulWidget {
//   @override
//   _SesartiranContState createState() => _SesartiranContState();
// }
// double _sliderVolume;
// class _SesartiranContState extends State<SesartiranCont> {
//   //
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Container(
//        //color: Colors.amber,
//      // alignment: Alignment.bottomLeft,
//       height: size.height * 0.1 - 37,
//       width: size.width * 0.9, //color: Colors.blue,
//       child: Flex(
//         direction: Axis.horizontal,
//         children: [
//           Expanded(
//             flex: 1,
//             child: IconButton(
//         splashColor: Colors.white,
//         hoverColor: Colors.white,
//         highlightColor: Colors.white,
//         focusColor: Colors.white,
//               icon: Icon(
//               Icons.volume_mute,
//               color: Colors.black45,
//               size: size.width * 0.060,
//             ), onPressed:(){
//                AudioManager.instance.setVolume(0);
//             })
//           ),
//           Container(
//             height: size.height * 0.03,
//             width: size.width * 0.75,
//             child: SliderTheme(
//               data: SliderThemeData(
//                   trackHeight: 1.5,
//                   thumbShape: RoundSliderThumbShape(
//                     enabledThumbRadius: 6,
//                   )),
//               child: Slider(
//                // min: 0,
//                // max: 20,
//                 inactiveColor: Colors.black12,
//                 activeColor: Colors.black87,
//                 value: _sliderVolume ?? 0,
//                 onChanged: (value) {
//                   setState(() {
//                     _sliderVolume = value;
//                     AudioManager.instance.setVolume(value, showVolume: true);
//                   });
//                 },
//               ),
//             ),
//           ),
//           Expanded(
//               flex: 1,
//               child: Icon(
//                     Icons.volume_up,
//                     color: Colors.black45,
//                     size: size.width * 0.060,
//                   ),
//                   ),
//         ],
//       ),
//     );
//   }
// }
