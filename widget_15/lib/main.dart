// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: ("Widget 15"),
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
  bool _Visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget 15"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Visibility(
              visible: _Visible,
              child: Image.asset(
                "images/car.jpg",
                width: 299,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            RawMaterialButton(
              fillColor: Colors.blue,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 14,
                  horizontal: 24,
                ),
                child: Text(
                  "Visible",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              onPressed: () {
                setState(() {
                  _Visible = !_Visible;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
