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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Widget 8"),
      // ),
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: false,
            floating: false,
            snap: false,
            title: Text("Sliver Appbar"),
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Flexible Space Bar"),
              centerTitle: true,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const Text(
                  "SLIVER",
                  style: TextStyle(fontSize: 600),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
