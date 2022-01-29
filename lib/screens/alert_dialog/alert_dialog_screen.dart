import 'package:flutter/material.dart';

class AlertDialogScreen extends StatefulWidget {
  final String title;

  const AlertDialogScreen({Key? key, required this.title}) : super(key: key);
  @override
  _AlertDialogScreenState createState() => _AlertDialogScreenState();
}

class _AlertDialogScreenState extends State<AlertDialogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('Simple Alert Dialog'),
                  content: const Text('This is a simple flutter alert dialog. Press cancel to close the dialog'),
                  actions: [
                    ElevatedButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('Cancel'),
                    ),
                  ],
                );
              },
            );
          },
          child: const Text('Show Alert Dialog'),
        ),
      ),
    );
  }
}
