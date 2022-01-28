import 'package:flutter/material.dart';

class ShowHideFlutterWidgetScreen extends StatefulWidget {
  final String title;

  const ShowHideFlutterWidgetScreen({Key? key, required this.title}) : super(key: key);

  @override
  _ShowHideFlutterWidgetScreenState createState() => _ShowHideFlutterWidgetScreenState();
}

class _ShowHideFlutterWidgetScreenState extends State<ShowHideFlutterWidgetScreen> {
  bool _isVisable = true;

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
              CheckboxListTile(
                contentPadding: EdgeInsets.zero,
                value: _isVisable,
                controlAffinity: ListTileControlAffinity.leading,
                title: const Text('Show / Hide Image Content'),
                onChanged: (value) {
                  setState(() {
                    _isVisable = value!;
                  });
                },
              ),
              const SizedBox(height: 20),
              Visibility(
                visible: _isVisable,
                child: Image.asset(
                  'assets/images/nature.jpg',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
