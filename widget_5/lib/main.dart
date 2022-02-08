import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: ("Widget 5"),
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
  String url = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget 5"),
      ),
      body: Hero(
        tag: "tag",
        child: Image.asset("assets/images/pic.jpg"),

        // child: Image.network(url),
      ),
    );
  }
}


      // body: Container(
      //   padding: EdgeInsets.all(15),
      //   child: Hero(
      //     tag: "tag",
      //     child: Image.asset("assets/images/pic.jpg"),
      //   ),
      //   // child: Image.network(url),
      // ),