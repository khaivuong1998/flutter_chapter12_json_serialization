import 'dart:convert';

import 'package:chapter12_json_serialization/model/music_response.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/music.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var client = http.Client();
  List<Music> listItems = [];

  void initState() {
    initData();
    super.initState();
  }

  Future<void> initData() async {
    try {
      var uri = Uri.parse("https://storage.googleapis.com/uamp/catalog.json");
      final response = await client.get(uri);
      Map<String, dynamic> dataResponse = jsonDecode(response.body);
      MusicResponse data = MusicResponse.fromJson(dataResponse);
      print(data.listData.length);
      print(response.body);
      listItems.clear();
      setState(() {
        listItems.addAll(data.listData);
      });
    } finally {
      client.close();
    }
  }

  void didChanelDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Music'),
      ),
      body: ListView.builder(
        itemCount: listItems.length,
        itemBuilder: (BuildContext ctxt, int index) {
          return Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.music_video),
                SizedBox(
                  width: 10,
                ),
                Text(
                  listItems[index].title ?? "Null Quy",
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  void deactivate() {
    super.deactivate();
  }

  void dispose() {
    super.dispose();
  }
}
