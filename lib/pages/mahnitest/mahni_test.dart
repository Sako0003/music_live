import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:music_live/model/user.dart';

class MahniTest extends StatefulWidget {
  @override
  _MahniTestState createState() => _MahniTestState();
}

// void jsonDers() async {
//   var url = "https://shuffleaz.herokuapp.com/";
//   var netice = await http.get(url); //zeng link yeni get
//   List neticelist = json.decode(netice.body); //neticeni liste cevirir

//   neticelist.forEach((value) {//her biri ucun verir  map
//     var data = News.fromMap(value); //mapi cevirir objekde
//     print('title:' + data.title);
//     print('link:' + data.link);
//     print('image:' + data.image);
//     print('reciever:' + data.reciever);
//     print('image:' + data.image);
//   });
//   }
  Future<List<dynamic>> getdatar() async {
    var url = "https://shuffleaz.herokuapp.com/";
    var netice = await http.get(url);
    List neticeJSON = json.decode(netice.body);
    return neticeJSON;
}

class _MahniTestState extends State<MahniTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getdatar(),//geleceyde gelen data melumat
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
            padding: EdgeInsets.only(top: 30),
            itemCount: snapshot.data.lenght,
            itemBuilder: (context, index) {
              var data = News.fromMap(snapshot.data[index]);
              return ListTile(
                leading: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(data.image),
                      )),
                ),
                title: Text(data.reciever),
                subtitle: Text(data.title),
              );
            },
          );
        },
      ),
    );
  }
}
