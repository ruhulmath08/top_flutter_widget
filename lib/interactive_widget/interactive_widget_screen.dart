import 'package:flutter/material.dart';
import 'package:top_flutter_widget/interactive_widget/interactive_details.dart';

class InteractiveWidgetScreen extends StatefulWidget {
  final String title;

  const InteractiveWidgetScreen({Key? key, required this.title}) : super(key: key);
  @override
  _InteractiveWidgetScreenState createState() => _InteractiveWidgetScreenState();
}

class _InteractiveWidgetScreenState extends State<InteractiveWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: InteractiveViewer(
          maxScale: 10,
          child: Image.asset(
            'assets/images/nature.jpg',
            height: MediaQuery.of(context).size.height * 0.3,
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const InteractiveDetails(
                title: 'Interactive Details',
              ),
            ),
          );
        },
        child: const Icon(Icons.info_outline, color: Colors.white),
      ),
    );
  }
}
