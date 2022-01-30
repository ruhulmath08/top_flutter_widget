import 'package:flutter/material.dart';

class ClickableWidgetWithEffectScreen extends StatefulWidget {
  final String title;

  const ClickableWidgetWithEffectScreen({Key? key, required this.title}) : super(key: key);
  @override
  _ClickableWidgetWithEffectScreenState createState() => _ClickableWidgetWithEffectScreenState();
}

class _ClickableWidgetWithEffectScreenState extends State<ClickableWidgetWithEffectScreen> {
  Color boxColor = Colors.blue;
  List<TitleModel> titles = TitleModel.fetchAll();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              boxColor = Colors.blue;
            });
          },
          onDoubleTap: () {
            setState(() {
              boxColor = Colors.red;
            });
          },
          onLongPress: () {
            setState(() {
              boxColor = Colors.yellow;
            });
          },
          child: Ink(
            width: 200,
            height: 200,
            color: boxColor,
            child: const Center(
              child: FlutterLogo(size: 150),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.zero,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ...titles
                .map(
                  (title) => Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 0,
                            child: CircleAvatar(
                              backgroundColor: title.color,
                              radius: 15,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              title.title,
                              style: const TextStyle(fontSize: 17),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          ],
        ),
      ),
    );
  }
}

class TitleModel {
  final String title;
  final Color color;

  TitleModel({
    required this.title,
    required this.color,
  });

  static List<TitleModel> fetchAll() => [
        TitleModel(title: 'onTab Color', color: Colors.blue),
        TitleModel(title: 'onDoubleTap Color', color: Colors.red),
        TitleModel(title: 'onLongPress Color', color: Colors.yellow),
      ];
}
