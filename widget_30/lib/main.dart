// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Widget 30",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget 30"),
      ),
      body: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Table",
              textScaleFactor: 2,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Table(
              // textDirection: TextDirection.rtl,
              // defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
              // border:TableBorder.all(width: 2.0,color: Colors.red),
              children: [
                TableRow(
                  children: [
                    Text(
                      "Education",
                      textScaleFactor: 1.5,
                    ),
                    Text("Institution name", textScaleFactor: 1.5),
                    Text("University", textScaleFactor: 1.5),
                  ],
                ),
                TableRow(
                  children: [
                    Text("B.Tech", textScaleFactor: 1.5),
                    Text("ABESEC", textScaleFactor: 1.5),
                    Text("AKTU", textScaleFactor: 1.5),
                  ],
                ),
                TableRow(
                  children: [
                    Text("12th", textScaleFactor: 1.5),
                    Text("Public School", textScaleFactor: 1.5),
                    Text("CBSE", textScaleFactor: 1.5),
                  ],
                ),
                TableRow(
                  children: [
                    Text("High School", textScaleFactor: 1.5),
                    Text("SFS", textScaleFactor: 1.5),
                    Text("ICSE", textScaleFactor: 1.5),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
