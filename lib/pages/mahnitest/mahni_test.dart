import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:music_live/model/user.dart';

class Testtttt extends StatefulWidget {
  @override
  _TestttttState createState() => _TestttttState();
}

Future< List<News>> getXeberler() async {
  var url = 'https://shuffleaz.herokuapp.com/';
  var netice = await http.get(url);
  var neticeJSON = json.decode(netice.body);
  var newr = News.fromMap(neticeJSON);
  if (News == 200) {
    return getXeberler();
    
  }
  print(newr.title);
  print(newr.link);
  print(newr.reciever);
  print(newr.image);
}

class _TestttttState extends State<Testtttt> {
  @override
  Widget build(BuildContext context) {
    return Container(child: InkWell(onTap: () {
      getXeberler();
    }));
  }
}
