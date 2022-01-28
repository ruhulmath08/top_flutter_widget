import 'package:flutter/material.dart';

class DisableBackButtonScreen extends StatefulWidget {
  final String title;

  const DisableBackButtonScreen({Key? key, required this.title}) : super(key: key);
  @override
  _DisableBackButtonScreenState createState() => _DisableBackButtonScreenState();
}

class _DisableBackButtonScreenState extends State<DisableBackButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: Center(
          child: Text(widget.title),
        ),
      ),
    );
  }
}
