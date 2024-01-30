import 'dart:convert';

import 'package:chapter12_json_serialization/channal/channel.dart';
import 'package:chapter12_json_serialization/channal/channel_reponse.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MainPageChannel extends StatefulWidget {
  const MainPageChannel({Key? key}) : super(key: key);

  @override
  State<MainPageChannel> createState() => _MainPageChannelState();
}

class _MainPageChannelState extends State<MainPageChannel> {
  var client = http.Client();
  List<Channel> listChannel = [];

  void initState() {
    initData();
    super.initState();
  }

  Future<void> initData() async {
    try {
      var uri = Uri.parse(
          "http://sos.mobile-danang.com/api/article/list?skip=0&take=20");
      final reponse = await client.get(uri);
      Map<String, dynamic> dataReponse = jsonDecode(reponse.body);
      ChannelReponse data = ChannelReponse.fromJson(dataReponse);
      print(data.stringData.length);
      print(reponse.body);
      listChannel.clear();
      setState(() {
        listChannel.addAll(data.stringData as Iterable<Channel>);
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
        title: Text('Languagges'),
      ),
      body: ListView.builder(
        itemCount: listChannel.length,
        itemBuilder: (BuildContext ctxt, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.sign_language_sharp),
                SizedBox(
                  width: 10,
                ),
                Text(
                  listChannel[index].title ?? "Null Quy",
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
