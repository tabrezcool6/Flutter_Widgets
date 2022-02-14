import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: ("Widget 34"),
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
  String _selectedText = "";
  String _text = "This is the text you want to select";
  final TextStyle styleBlue = const TextStyle(
    fontSize: 35,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
  );
  final TextStyle styleNormal = const TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget 34"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _selectedText,
                style: styleBlue,
              ),
              SizedBox(
                height: 75,
              ),
              SelectableText(
                _text,
                style: styleNormal,
                onSelectionChanged: (selection, cause) {
                  setState(() {
                    _selectedText =
                        _text.substring(selection.start, selection.end);
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
