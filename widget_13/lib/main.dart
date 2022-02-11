import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: ("Widget 13"),
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
  String title = "First Page";
  String firstPage = "First Page";
  String secondPage = "Second Page";
  String thirdPage = "Third Page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text(firstPage),
                value: firstPage,
              ),
              PopupMenuItem(
                child: Text(secondPage),
                value: secondPage,
              ),
              PopupMenuItem(
                child: Text(thirdPage),
                value: thirdPage,
              ),
            ],
            onSelected: (String newValue) {
              setState(() {
                title = newValue;
              });
            },
          ),
        ],
      ),
    );
  }
}
