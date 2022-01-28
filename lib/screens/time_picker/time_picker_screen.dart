import 'package:flutter/material.dart';

class TimePickerScreen extends StatefulWidget {
  final String title;

  const TimePickerScreen({Key? key, required this.title}) : super(key: key);
  @override
  _TimePickerScreenState createState() => _TimePickerScreenState();
}

class _TimePickerScreenState extends State<TimePickerScreen> {
  TimeOfDay? time = const TimeOfDay(hour: 12, minute: 12);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text(
          '${time!.hourOfPeriod.toString()} : ${time!.minute.toString()}  ${time!.period.name}',
          style: const TextStyle(
            fontSize: 60,
            fontWeight: FontWeight.w700,
            color: Colors.grey,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          TimeOfDay? newTime = await showTimePicker(
            context: context,
            initialTime: time!,
          );
          if (newTime != null) {
            setState(() {
              time = newTime;
            });
          }
        },
        child: const Icon(Icons.access_time_outlined),
      ),
    );
  }
}
