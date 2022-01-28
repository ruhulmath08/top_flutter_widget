import 'package:flutter/material.dart';

class FutureBuilderScreen extends StatefulWidget {
  final String title;

  const FutureBuilderScreen({Key? key, required this.title}) : super(key: key);
  @override
  _FutureBuilderScreenState createState() => _FutureBuilderScreenState();
}

Future<String> getData() async {
  await Future.delayed(const Duration(seconds: 2));
  //throw 'An error occurred';
  return 'It works';
}

class _FutureBuilderScreenState extends State<FutureBuilderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator.adaptive();
            }
            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(snapshot.data.toString()),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {});
                    },
                    child: const Text('Refresh'),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
