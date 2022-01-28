import 'package:flutter/material.dart';

class DatePickerScreen extends StatefulWidget {
  final String title;

  const DatePickerScreen({Key? key, required this.title}) : super(key: key);
  @override
  _DatePickerScreenState createState() => _DatePickerScreenState();
}

class _DatePickerScreenState extends State<DatePickerScreen> {
  DateTime _dateTime = DateTime(1900);
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
            Text(
              '${_dateTime.day}-${_dateTime.month}-${_dateTime.year}',
              style: const TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.w700,
                color: Colors.grey,
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                DateTime? _newDate = await showDatePicker(
                  context: context,
                  initialDate: _dateTime,
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2100),
                );

                if (_newDate != null) {
                  setState(() {
                    _dateTime = _newDate;
                  });
                }
              },
              child: const Text('Select Date'),
            ),
          ],
        ),
      ),
    );
  }
}
