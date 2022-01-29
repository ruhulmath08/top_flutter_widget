import 'package:flutter/material.dart';

class PositionedWidgetScreen extends StatefulWidget {
  final String title;

  const PositionedWidgetScreen({Key? key, required this.title}) : super(key: key);
  @override
  _PositionedWidgetScreenState createState() => _PositionedWidgetScreenState();
}

class _PositionedWidgetScreenState extends State<PositionedWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Stack(
            children: [
              Positioned(
                left: 40,
                top: 40,
                child: Image.asset(
                  'assets/images/nature.jpg',
                  height: 100,
                ),
              ),
              Positioned(
                left: 80,
                top: 80,
                child: Image.asset(
                  'assets/images/nature.jpg',
                  height: 100,
                ),
              ),
              Positioned(
                left: 120,
                top: 120,
                child: Image.asset(
                  'assets/images/nature.jpg',
                  height: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
