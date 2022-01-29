import 'package:flutter/material.dart';

class StackWidgetScreen extends StatefulWidget {
  final String title;

  const StackWidgetScreen({Key? key, required this.title}) : super(key: key);
  @override
  _StackWidgetScreenState createState() => _StackWidgetScreenState();
}

class _StackWidgetScreenState extends State<StackWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Stack(
          children: [
            Center(
              child: Image.asset('assets/images/nature.jpg'),
            ),
            const Center(
              child: CircleAvatar(
                radius: 80,
                child: Text('Circle Avatar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
