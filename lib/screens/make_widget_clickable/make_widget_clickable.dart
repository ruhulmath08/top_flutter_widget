import 'package:flutter/material.dart';

class MakeWidgetClickable extends StatefulWidget {
  final String title;

  const MakeWidgetClickable({Key? key, required this.title}) : super(key: key);
  @override
  _MakeWidgetClickableState createState() => _MakeWidgetClickableState();
}

class _MakeWidgetClickableState extends State<MakeWidgetClickable> {
  int value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              value++;
            });
          },
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            child: Center(
              child: Text(
                value.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
