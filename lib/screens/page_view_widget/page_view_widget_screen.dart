import 'package:flutter/material.dart';

class PageViewWidgetScreen extends StatefulWidget {
  final String title;

  const PageViewWidgetScreen({Key? key, required this.title}) : super(key: key);
  @override
  _PageViewWidgetScreenState createState() => _PageViewWidgetScreenState();
}

class _PageViewWidgetScreenState extends State<PageViewWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: PageView(
          children: [
            Container(
              color: Colors.red,
              child: const Center(
                child: Text(
                  'Page-1',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.green,
              child: const Center(
                child: Text(
                  'Page-2',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.blue,
              child: const Center(
                child: Text(
                  'Page-3',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
