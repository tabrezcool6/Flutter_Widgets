import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: ("Widget 10"),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget 10"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(25),
        child: ExpansionTile(
          title: Text("More"),
          leading: Icon(Icons.info_outline),
          children: [
            ListTile(
              title: Text("Data 1"),
            ),
            ListTile(
              title: Text("Data 2"),
            ),
            ListTile(
              title: Text("Data 3"),
            ),
          ],
        ),
      ),
    );
  }
}
