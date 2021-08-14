import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_streams/streams.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter streams"),
        ),
        body: StreamBuilder(
          stream: SampleStreams.numberStream(),
          builder: (context, snapshot) => Center(
              child: Text(
            snapshot.data.toString(),
            style: TextStyle(fontSize: 20),
          )),
        ));
  }
}
