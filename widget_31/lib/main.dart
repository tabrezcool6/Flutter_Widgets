import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: ("Widget 31"),
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
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget 31"),
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: GestureDetector(
            onTap: () {
              setState(() {
                counter++;
              });
            },
            child: Container(
              height: 250,
              width: 250,
              color: Colors.blue,
              child: Center(
                child: Text(
                  "$counter",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 70,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
