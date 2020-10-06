import 'package:flutter/material.dart';
import 'package:koralive/api_manager.dart';
import 'package:koralive/pagebody.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SoccerApp(),
    );
  }
}

class SoccerApp extends StatefulWidget {
  @override
  _SoccerAppState createState() => _SoccerAppState();
}

class _SoccerAppState extends State<SoccerApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 0.0,
        title: Text(
          "SOCCER BOARD",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: FutureBuilder(

        future: SoccerApi(0)
            .getAllMatches(), //Here we will call our getData() method,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            //print((snapshot.data).length);
            return PageBody(snapshot.data);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        }, // here we will buil the app layout
      ),
    );
  }
}