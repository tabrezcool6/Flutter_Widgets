import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Widget 27",
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
  List<Widget> widgetList = [
    Container(
      color: Colors.blue,
      child: const Center(
        child: Text("Container 2"),
      ),
    ),
    Container(
      color: Colors.green,
      child: const Center(
        child: Text("Container 2"),
      ),
    ),
    Container(
      color: Colors.red,
      child: const Center(
        child: Text("Container 3"),
      ),
    ),
    Container(
      color: Colors.yellow,
      child: const Center(
        child: Text("Container 4"),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget 26"),
      ),
      body: Column(
        children: [
          ...widgetList,
        ],
      ),
    );
  }
}
