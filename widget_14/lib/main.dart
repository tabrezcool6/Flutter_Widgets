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
  RangeValues values = const RangeValues(0.1, 0.5);
  @override
  Widget build(BuildContext context) {
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget 11"),
      ),
      body: Center(
        child: RangeSlider(
          values: values,
          labels: labels,
          divisions: 25,
          onChanged: (newVal) {
            setState(() {
              values = newVal;
            });
          },
        ),
      ),
    );
  }
}
