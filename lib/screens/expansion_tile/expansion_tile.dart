import 'package:flutter/material.dart';

class ExpansionTileScreen extends StatefulWidget {
  final String title;

  const ExpansionTileScreen({Key? key, required this.title}) : super(key: key);
  @override
  _ExpansionTileScreenState createState() => _ExpansionTileScreenState();
}

class _ExpansionTileScreenState extends State<ExpansionTileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title.replaceAll(' ', '')), //remove space
      ),
      body: const ExpansionTile(
        leading: Icon(Icons.info),
        title: Text('ExpansionTile'),
        backgroundColor: Colors.black12,
        children: [
          ListTile(title: Text('First')),
          ListTile(title: Text('Second')),
          ListTile(title: Text('Third')),
          ListTile(title: Text('Fourth')),
          ListTile(title: Text('Five')),
        ],
      ),
    );
  }
}
