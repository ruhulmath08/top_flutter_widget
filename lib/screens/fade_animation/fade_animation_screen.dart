import 'package:flutter/material.dart';

class FadeAnimationScreen extends StatefulWidget {
  final String title;

  const FadeAnimationScreen({Key? key, required this.title}) : super(key: key);
  @override
  _FadeAnimationScreenState createState() => _FadeAnimationScreenState();
}

class _FadeAnimationScreenState extends State<FadeAnimationScreen> {
  bool _bool = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                _bool = !_bool;
              });
            },
            child: const Text(
              'Switch',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: AnimatedCrossFade(
          firstChild: Image.asset('assets/images/nature.jpg'),
          secondChild: Image.asset('assets/images/ported_image.jpg'),
          crossFadeState: _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(seconds: 2),
        ),
      ),
    );
  }
}
