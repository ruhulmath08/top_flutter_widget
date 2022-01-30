import 'package:flutter/material.dart';

class InteractiveDetails extends StatefulWidget {
  final String title;

  const InteractiveDetails({Key? key, required this.title}) : super(key: key);
  @override
  _InteractiveDetailsState createState() => _InteractiveDetailsState();
}

class _InteractiveDetailsState extends State<InteractiveDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: InteractiveViewer(
        boundaryMargin: const EdgeInsets.all(double.infinity),
        minScale: 1,
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: Center(
            child: Text(widget.title),
          ),
        ),
      ),
    );
  }
}
