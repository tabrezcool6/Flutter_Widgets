// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'search_delegate.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search bar'),
        actions: [
          IconButton(
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: CustomSearchDelegate(),
                );
              },
              icon: Icon(Icons.search))
        ],
      ),
      body: ListView.builder(
        itemCount: myList.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(myList.elementAt(index)),
          );
        },
      ),
    );
  }
}

final List<String> myList = [
  "Apple",
  "Amazon",
  "Google",
  "Flipkart",
  "Microsoft",
  "Alibaba"
];
