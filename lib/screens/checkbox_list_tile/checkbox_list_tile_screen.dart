import 'package:flutter/material.dart';

class CheckboxListTileScreen extends StatefulWidget {
  final String title;

  const CheckboxListTileScreen({Key? key, required this.title}) : super(key: key);
  @override
  _CheckboxListTileScreenState createState() => _CheckboxListTileScreenState();
}

class _CheckboxListTileScreenState extends State<CheckboxListTileScreen> {
  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: CheckboxListTile(
          title: Text(widget.title),
          subtitle: const Text('Please check or uncheck'),
          checkColor: Colors.white,
          activeColor: Colors.green,
          tileColor: Colors.grey[300],
          controlAffinity: ListTileControlAffinity.leading,
          contentPadding: EdgeInsets.zero,
          value: isCheck,
          onChanged: (bool? value) {
            setState(() {
              isCheck = value!;
            });
          },
        ),
      ),
      bottomNavigationBar: Card(
        margin: EdgeInsets.zero,
        child: Container(
          height: 40,
          color: isCheck ? Colors.green : Colors.grey,
          child: Center(
            child: Text(
              isCheck ? 'Checked' : 'Unchecked',
              style: const TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
