// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: ("Widget 17"),
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final controller = PageController(initialPage: 0);
  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget 17"),
        // centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => controller.previousPage(
                duration: const Duration(seconds: 1), curve: Curves.easeInOut),
            icon: Icon(
              Icons.keyboard_arrow_left,
              size: 40,
              color: Colors.white,
            ),
          ),
          IconButton(
            padding: EdgeInsets.fromLTRB(0, 0, 150, 0),
            onPressed: () => controller.nextPage(
                duration: const Duration(seconds: 1), curve: Curves.easeInOut),
            icon: Icon(
              Icons.keyboard_arrow_right,
              size: 40,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: PageView(
            controller: controller,
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.amber,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
