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
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget 7"),
      ),
      body: Center(
        child: ChoiceChip(
          avatar: const CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text(
              "1",
              style: (TextStyle(
                fontSize: 16,
              )),
            ),
          ),
          label: const Text("Choice Chip"),
          selected: _isSelected,
          onSelected: (selected) {
            setState(() {
              _isSelected = selected;
            });
          },
        ),
      ),
    );
  }
}
