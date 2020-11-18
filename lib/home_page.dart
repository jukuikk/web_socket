import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final IOWebSocketChannel channel =
      IOWebSocketChannel.connect('wss://ws.blockchain.info/inv');
  String _text = "";

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("WebSocket Test")),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: StreamBuilder(
                  stream: channel.stream,
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      _text = "網路不通...";
                    } else if (snapshot.hasData) {
                      _text = "echo: " + snapshot.data;
                    }
                    return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 24.0),
                        child: Text(_text));
                  })),
        ),
        bottomNavigationBar: Row(children: [
          RaisedButton(onPressed: ping, child: Text('Ping')),
          RaisedButton(onPressed: subscribe, child: Text('Subscribe')),
          RaisedButton(onPressed: unsubscribe, child: Text('Unsubscribe'))
        ]));
  }

  void ping() {
    channel.sink.add(jsonEncode({"op": "ping"}));
  }

  void subscribe() {
    channel.sink.add(jsonEncode({"op": "unconfirmed_sub"}));
  }

  void unsubscribe() {
    channel.sink.add(jsonEncode({"op": "unconfirmed_unsub"}));
  }

  @override
  void dispose() {
    channel.sink.close();
    super.dispose();
  }
}
