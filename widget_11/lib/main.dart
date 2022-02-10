import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: ("Widget 11"),
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
  String _time = "10:00 AM";
  @override
  Widget build(BuildContext context) {
    Future<void> _openTimePicker(BuildContext context) async {
      final TimeOfDay? t =
          await showTimePicker(context: context, initialTime: TimeOfDay.now());
      if (t != null) {}
      setState(() {
        _time = t!.format(context);
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget 11"),
      ),
      body: Center(
        child: RawMaterialButton(
          fillColor: Colors.blue,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 14, horizontal: 24),
            child: Text(
              _time,
              style: const TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          onPressed: () {
            _openTimePicker(context);
          },
        ),
      ),
    );
  }
}
