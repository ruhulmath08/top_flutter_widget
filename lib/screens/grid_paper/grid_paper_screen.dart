import 'package:flutter/material.dart';

class GridPaperScreen extends StatefulWidget {
  final String title;

  const GridPaperScreen({Key? key, required this.title}) : super(key: key);
  @override
  _GridPaperScreenState createState() => _GridPaperScreenState();
}

class _GridPaperScreenState extends State<GridPaperScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: GridPaper(
          color: Colors.blue,
          divisions: 1,
          interval: 200,
          subdivisions: 8,
        ),
      ),
    );
  }
}
