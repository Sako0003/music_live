// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:music_live/pages/home/music_image_container.dart';

// class ListHistr extends StatefulWidget {
//   const ListHistr({
//     Key key,
//   }) : super(key: key);

//   @override
//   _ListHistrState createState() =>
//       _ListHistrState();
// }

// class _ListHistrState extends State<ListHistr> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(

//        height: ScreenUtil().setHeight(180),
//             width: double.infinity,
//       //color: Colors.amber,
//       child: ListView.builder(
//         scrollDirection: Axis.vertical,
//         itemCount: mylist.length,
//         itemBuilder: (context, index) {
//           return Container(
//             margin: EdgeInsets.only(bottom: 10),
//            // color: Colors.green,
//             height: ScreenUtil().setHeight(60),
//             width: double.infinity,
//             child: Row(
//               children: [
//                 ColorFiltered(
//                   colorFilter: ColorFilter.matrix(
//                     [
//                       0.2126, 0.7152, 0.0722, 0, 0,
//                       0.2126, 0.7152, 0.0722, 0,
//                       0, //this color image change(black)
//                       0.2126, 0.7152, 0.0722, 0, 0,
//                       0, 0, 0, 1, 0,
//                     ],
//                   ),
//                   child: Container(
//                     margin: EdgeInsets.only(left: 20),
//                     width: ScreenUtil().setHeight(63),
//                     decoration: BoxDecoration(
//                       //   color: Colors.black,
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(1),
//                       ),
//                       image: DecorationImage(
//                         fit: BoxFit.cover,
//                         image: NetworkImage(mylist[index].image),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   padding: EdgeInsets.only(
//                     left: 10,
//                   ),
//                   //  color: Colors.pink,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Flexible(
//                         child: Container(
//                           width: ScreenUtil().screenWidth / 2 + 43,
//                           alignment: Alignment.centerLeft,
//                           child: Text(
//                             'Andro',
//                             maxLines: 1,
//                             softWrap: true,
//                             overflow: TextOverflow.ellipsis,
//                             style: TextStyle(
//                                 color: Colors.black54,
//                                 fontSize: ScreenUtil()
//                                     .setSp(15, allowFontScalingSelf: true),
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                       ),
//                       Flexible(
//                         child: Container(
//                           width: ScreenUtil().screenWidth / 2 + 43,

//                           alignment: Alignment.topLeft,
//                           //  color: Colors.pink,
//                           child: Text(
//                             'Touromusic',
//                             maxLines: 1,
//                             softWrap: true,
//                             overflow: TextOverflow.ellipsis,
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: ScreenUtil()
//                                     .setSp(17, allowFontScalingSelf: true),
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 GestureDetector(
//                     onTap: () {
//                       Navigator.pushNamed(context, '/musicplayer');
//                     },
//                     child: Container(
//                       // color: Colors.amber,
//                       margin: const EdgeInsets.only(
//                         left: 8,
//                       ),
//                       child: Icon(
//                         Icons.add_circle_outline,
//                         color: Colors.black,
//                         size: 29,
//                       ),
//                     )),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
