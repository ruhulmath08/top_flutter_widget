import 'package:flutter/material.dart';

class FlutterChipScreen extends StatefulWidget {
  final String title;

  const FlutterChipScreen({Key? key, required this.title}) : super(key: key);
  @override
  _FlutterChipScreenState createState() => _FlutterChipScreenState();
}

class _FlutterChipScreenState extends State<FlutterChipScreen> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ChoiceChip(
          label: const Text('Choice Chip'),
          avatar:
              _isSelected ? const Icon(Icons.check, color: Colors.white) : null,
          selected: _isSelected,
          onSelected: (newValue) {
            setState(() {
              _isSelected = newValue;
            });
          },
        ),
      ),
    );
  }
}
