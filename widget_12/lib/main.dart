// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: ("Widget 12"),
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  DateTime _date = DateTime(2022, 02, 10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget 12"),
      ),
      body: Center(
        child: RawMaterialButton(
          fillColor: Colors.blue,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Text(
              "${_date.year}/${_date.month}/${_date.day}",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
          onPressed: () async {
            DateTime? newDate = await showDatePicker(
              context: context,
              initialDate: _date,
              firstDate: DateTime(1),
              lastDate: DateTime(2200),
            );

            if (newDate != null) {
              setState(() {
                _date = newDate;
              });
            } else if (newDate == null) {
              return;
            }
          },
        ),
      ),
    );
  }
}
