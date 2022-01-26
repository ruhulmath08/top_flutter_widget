import 'package:flutter/material.dart';

class FlutterHeroWidgetScreen extends StatefulWidget {
  final String title;

  const FlutterHeroWidgetScreen({Key? key, required this.title})
      : super(key: key);
  @override
  _FlutterHeroWidgetScreenState createState() =>
      _FlutterHeroWidgetScreenState();
}

class _FlutterHeroWidgetScreenState extends State<FlutterHeroWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const DetailScreen(
                  tag: 'imageHero',
                  image: 'assets/images/nature.jpg',
                );
              },
            ),
          );
        },
        child: Hero(
          tag: 'imageHero',
          child: Image.asset(
            'assets/images/nature.jpg',
          ),
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final String image;
  final String tag;

  const DetailScreen({
    Key? key,
    required this.image,
    required this.tag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
            tag: tag,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              height: double.infinity,
            ),
          ),
        ),
      ),
    );
  }
}
