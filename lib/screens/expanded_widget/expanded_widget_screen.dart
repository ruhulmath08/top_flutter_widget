import 'package:flutter/material.dart';

class ExpandedWidgetScreen extends StatefulWidget {
  final String title;

  const ExpandedWidgetScreen({Key? key, required this.title}) : super(key: key);
  @override
  _ExpandedWidgetScreenState createState() => _ExpandedWidgetScreenState();
}

class _ExpandedWidgetScreenState extends State<ExpandedWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.red,
                      height: 40,
                      child: const Center(
                        child: Text(
                          'Expanded Widget',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 40,
                    child: const Center(
                      child: Text(
                        'Normal Widget',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.red,
                      height: 40,
                      child: const Center(
                        child: Text(
                          'Expanded Widget',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                      height: 40,
                      child: const Center(
                        child: Text(
                          'Expanded Widget',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
