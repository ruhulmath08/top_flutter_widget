import 'package:flutter/material.dart';

class RangeSliderScreen extends StatefulWidget {
  final String title;

  const RangeSliderScreen({Key? key, required this.title}) : super(key: key);
  @override
  _RangeSliderScreenState createState() => _RangeSliderScreenState();
}

class _RangeSliderScreenState extends State<RangeSliderScreen> {
  RangeValues values = const RangeValues(0.0, 0.5);
  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(
      values.start.toString(),
      values.end.toString(),
    );
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
              RangeSlider(
                values: values,
                divisions: 10,
                labels: labels,
                onChanged: (RangeValues newValues) {
                  setState(() {
                    values = newValues;
                  });
                },
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Start Value: ${values.start.toString()}'),
                  Text('End Value: ${values.end.toString()}'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
