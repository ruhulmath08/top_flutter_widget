import 'dart:developer';

import 'package:flutter/material.dart';

class SearchBarScreen extends StatefulWidget {
  final String title;

  const SearchBarScreen({Key? key, required this.title}) : super(key: key);
  @override
  _SearchBarScreenState createState() => _SearchBarScreenState();
}

class _SearchBarScreenState extends State<SearchBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(),
              );
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: Center(
        child: Text("${widget.title}"),
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'Hp',
    'Dell',
    'Lenovo',
    'Compact',
    'Apple',
    'Samsung',
    'Toshiba',
    'LG',
    'Acer',
    'MSI',
    'Fujitsu',
    'Panasonic',
    'Walton',
    'Huawei',
    'Huawei',
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var laptop in searchTerms) {
      if (laptop.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(laptop);
      }
    }

    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          onTap: () {
            log(result);
          },
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var laptop in searchTerms) {
      if (laptop.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(laptop);
      }
    }

    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
