import 'package:flutter/material.dart';

class StepperScreen extends StatefulWidget {
  final String title;
  const StepperScreen({Key? key, required this.title}) : super(key: key);

  @override
  State<StepperScreen> createState() => _StepperScreenState();
}

class _StepperScreenState extends State<StepperScreen> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Center(
              child: Stepper(
                steps: const [
                  Step(
                    title: Text('Step-1'),
                    content: Text('Information for step-1'),
                  ),
                  Step(
                    title: Text('Step-2'),
                    content: Text('Information for step-2'),
                  ),
                  Step(
                    title: Text('Step-3'),
                    content: Text('Information for step-3'),
                  ),
                  Step(
                    title: Text('Step-4'),
                    content: Text('Information for step-4'),
                  ),
                ],
                onStepTapped: (int newIndex) {
                  setState(() {
                    _currentStep = newIndex;
                  });
                },
                currentStep: _currentStep,
                onStepContinue: () {
                  if (_currentStep != 3) {
                    setState(() {
                      _currentStep += 1;
                    });
                  }
                },
                onStepCancel: () {
                  if (_currentStep != 0) {
                    setState(() {
                      _currentStep -= 1;
                    });
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
