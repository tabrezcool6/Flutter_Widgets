import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: ("Widget 33"),
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
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget 33"),
      ),
      body: Center(
        child: CheckboxListTile(
            value: _isChecked,
            title: Text("Check"),
            tileColor: Colors.black12,
            onChanged: (bool? newValue) {
              setState(() {
                _isChecked = newValue!;
              });
            }),
      ),
    );
  }
}
