import 'package:flutter/material.dart';

class SelectableTextScreen extends StatefulWidget {
  final String title;

  const SelectableTextScreen({Key? key, required this.title}) : super(key: key);
  @override
  _SelectableTextScreenState createState() => _SelectableTextScreenState();
}

class _SelectableTextScreenState extends State<SelectableTextScreen> {
  String selectedText = '';
  final String _selectableText = 'This is a selectable text widget with selected. Please select some text';
  final TextStyle _styleBlue = const TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w500,
    color: Colors.blue,
  );
  final TextStyle _style = const TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w700,
  );

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
              Text(selectedText, style: _styleBlue),
              const SizedBox(height: 50),
              TextSelectionTheme(
                data: const TextSelectionThemeData(
                  selectionColor: Colors.brown,
                ),
                child: SelectableText(
                  _selectableText,
                  style: _style,
                  textAlign: TextAlign.justify,
                  onSelectionChanged: (selection, cause) {
                    setState(() {
                      selectedText = _selectableText.substring(
                        selection.start,
                        selection.end,
                      );
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
