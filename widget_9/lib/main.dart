import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: ("Widget 9"),
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
    Widget _image = Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        color: Colors.red,
        child: Image.asset(
          "images/pic.png",
          width: 80,
          height: 80,
        ),
      ),
    );

    List<Widget> _list = [_image, _image, _image, _image];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget 9"),
      ),
      body: Center(
        child: Wrap(
          children: _list,
        ),
      ),
    );
  }
}
