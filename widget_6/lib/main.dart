import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: ("Widget 6"),
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

Stream<int> generateStream = (() async* {
  await Future<void>.delayed(const Duration(seconds: 2));
  yield 1;
  await Future<void>.delayed(const Duration(seconds: 1));
  yield 2;
  await Future<void>.delayed(const Duration(seconds: 1));
  yield 3;
  await Future<void>.delayed(const Duration(seconds: 1));
  yield 4;
  await Future<void>.delayed(const Duration(seconds: 1));
  yield 5;
  await Future<void>.delayed(const Duration(seconds: 1));
  yield 6;
  await Future<void>.delayed(const Duration(seconds: 1));
  yield 7;
  await Future<void>.delayed(const Duration(seconds: 1));
  yield 8;
  await Future<void>.delayed(const Duration(seconds: 1));
  yield 9;
  await Future<void>.delayed(const Duration(seconds: 1));
  yield 10;
})();

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget 6"),
      ),
      body: Center(
        child: StreamBuilder(
          stream: generateStream,
          initialData: 0,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator.adaptive();
            } else if (snapshot.hasError) {
              return const Text("error");
            } else {
              return Text(
                snapshot.data.toString(),
                style: TextStyle(fontSize: 29),
              );
            }
          },
        ),
      ),
    );
  }
}
