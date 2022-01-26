import 'package:flutter/material.dart';

class StreamFlowScreen extends StatefulWidget {
  final String title;

  const StreamFlowScreen({Key? key, required this.title}) : super(key: key);
  @override
  _StreamFlowScreenState createState() => _StreamFlowScreenState();
}

class _StreamFlowScreenState extends State<StreamFlowScreen> {
  //fake stream
  Stream<int> generateStream = (() async* {
    await Future<void>.delayed(const Duration(seconds: 2));
    yield 1;
    await Future<void>.delayed(const Duration(seconds: 1));
    yield 2;
    //throw 'An error occurred';
    await Future<void>.delayed(const Duration(seconds: 1));
    yield 3;
  })();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: StreamBuilder(
          stream: generateStream,
          initialData: 0,
          builder: (contest, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator.adaptive();
            }
            if (snapshot.hasError) {
              return const Text('Error');
            } else {
              return Text(
                snapshot.data.toString(),
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
