// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Widget 1'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Container(
            // decoration: Decoratop,
            child: Stepper(
              steps: const [
                Step(
                  title: Text("Title 1"),
                  content: Text("This is Stepper 1"),
                ),
                Step(
                  title: Text("Title 2"),
                  content: Text("This is Stepper 2"),
                ),
                Step(
                  title: Text("Title 3"),
                  content: Text("This is Stepper 3"),
                ),
              ],
              onStepTapped: (int newIndex) {
                setState(() {
                  currentStep = newIndex;
                });
              },
              currentStep: currentStep,
              onStepContinue: () {
                if (currentStep != 2) {
                  setState(() {
                    currentStep += 1;
                  });
                }
              },
              onStepCancel: () {
                if (currentStep != 0) {
                  setState(() {
                    currentStep -= 1;
                  });
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
