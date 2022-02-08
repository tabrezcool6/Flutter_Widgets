// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ("Widget 4"),
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
        title: Text("Widget 4"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Slider(
                onChanged: (double value) {},
                value: 1,
              ),
              CircularProgressIndicator(),
              SwitchListTile.adaptive(
                value: true,
                title: Text(
                  "Switch List Tile",
                ),
                onChanged: (bool value) {},
              ),
              Icon(Icons.delete_forever),
            ],
          ),
        ),
      ),
    );
  }
}
