// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ("Widget 18"),
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget 18"),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 18,
          )),
          child: const Text(
            "Bottom Modal Sheet",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onPressed: showSheet,
        ),
      ),
    );
  }

  Future showSheet() => showSlidingBottomSheet(
        context,
        builder: (context) => SlidingSheetDialog(
          snapSpec: SnapSpec(
            snappings: [0.4, 0.7],
          ),
          builder: buildSheet,
          duration: Duration(
            milliseconds: 400,
          ),
        ),
      );

  Widget buildSheet(context, state) => Material(
        child: Column(
          children: const [
            Text(
              "datadfjbsdvjhbdvjhdbafdsbfjbsdjbjfdhsbjfdjshbfhdbsjhfbsdbfhdbshjfbdhsbfjhjhbfdsbfjdbjfdjbfdhbfhdsbhbjhbfsjdabfjsdbfhbjdsfbjdsbafhdsbhfbsdfjbhfbdhjfbrfubfjdsfdsbfksbdkjfbdsjbfhjdsbfhjdbfjsdbhjfbdshfbdjsbfjkdsbafdsbjhfbdskjbfiaidbinawunfdn",
              style: TextStyle(fontSize: 100),
            ),
          ],
        ),
      );
}
