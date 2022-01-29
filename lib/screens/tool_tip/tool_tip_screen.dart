import 'package:flutter/material.dart';

class ToolTipScreen extends StatefulWidget {
  final String title;

  const ToolTipScreen({Key? key, required this.title}) : super(key: key);
  @override
  _ToolTipScreenState createState() => _ToolTipScreenState();
}

class _ToolTipScreenState extends State<ToolTipScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Tooltip(
              message: 'This is a tooltip example',
              child: Image.asset('assets/images/nature.jpg'),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Long press the image for show tooltip message'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
