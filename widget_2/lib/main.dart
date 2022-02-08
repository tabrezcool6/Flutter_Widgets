// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Widget 2",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Widget 2"),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(15)),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                width: 300,
                height: 200,
                color: Colors.blue,
                padding: EdgeInsets.all(10),
                child: FittedBox(
                  child: Text(
                    "Hello, I'm a Fitted box widget",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                width: 300,
                height: 200,
                color: Colors.blue,
                padding: EdgeInsets.all(10),
                child: FittedBox(
                  child: Text(
                    "Hello",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                width: 300,
                height: 200,
                color: Colors.blue,
                padding: EdgeInsets.all(10),
                child: FittedBox(
                  child: Text(
                    "Fitted box",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ],
          ),

          // child: Container(
          //   width: 300,
          //   height: 200,
          //   color: Colors.blue,
          //   padding: EdgeInsets.all(10),
          //   child: FittedBox(
          //     child: Text(
          //       "Hello, I'm a Fitted box widget",
          //       style: TextStyle(
          //         color: Colors.white,
          //         fontSize: 50,
          //         fontWeight: FontWeight.w900,
          //       ),
          //     ),
          //   ),
          // ),
        ),
      ),
    );
  }
}
