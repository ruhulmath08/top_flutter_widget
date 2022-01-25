import 'package:flutter/material.dart';

class FittedBoxScreen extends StatefulWidget {
  final String title;

  const FittedBoxScreen({Key? key, required this.title}) : super(key: key);
  @override
  _FittedBoxScreenState createState() => _FittedBoxScreenState();
}

class _FittedBoxScreenState extends State<FittedBoxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 50,
          color: Colors.red,
          padding: const EdgeInsets.all(10.0),
          child: const FittedBox(
            child: Text(
              'Flutter App',
              style: TextStyle(
                fontSize: 100,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
