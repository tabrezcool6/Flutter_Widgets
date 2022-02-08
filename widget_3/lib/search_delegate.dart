import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate<String> {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          if (query != "") {
            query = "";
          } else {
            close(context, "");
          }
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        onPressed: () {
          close(context, "");
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? myList
        : myList
            .where((element) => element.toLowerCase().startsWith(query))
            .toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.add_circle_outline),
        title: Text(suggestionList[index]),
      ),
      itemCount: suggestionList.length,
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
