import 'package:flutter/material.dart';

class WrapWidgetScreen extends StatefulWidget {
  final String title;

  const WrapWidgetScreen({Key? key, required this.title}) : super(key: key);
  @override
  _WrapWidgetScreenState createState() => _WrapWidgetScreenState();
}

class _WrapWidgetScreenState extends State<WrapWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    final Widget _image = Padding(
      padding: const EdgeInsets.all(5.0),
      child: Image.asset(
        'assets/images/nature.jpg',
        fit: BoxFit.cover,
        width: 100,
        height: 100,
      ),
    );

    final List<Widget> _imageList = [
      _image,
      _image,
      _image,
      _image,
      _image,
      _image,
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        //if we use Row it will give an error
        child: Wrap(
          children: _imageList,
        ),
      ),
    );
  }
}
