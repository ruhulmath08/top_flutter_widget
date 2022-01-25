import 'package:flutter/material.dart';
import 'package:top_flutter_widget/model/widget_models.dart';

class HomeScreen extends StatelessWidget {
  final String title;
  const HomeScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<WidgetModel> widgetModel = WidgetModel.fetchAll();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        physics: const BouncingScrollPhysics(),
        itemCount: widgetModel.length,
        itemBuilder: (BuildContext context, int index) {
          return ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, getRouteFromTitle(widgetModel[index].name)),
            child: Text(widgetModel[index].name),
          );
        },
      ),
    );
  }

  String getRouteFromTitle(String title) {
    final spiltTitle = title.split(' ');
    final pageRoute = StringBuffer();
    pageRoute.write('/');
    for (final String item in spiltTitle) {
      pageRoute.write('${item.toLowerCase()}_');
    }

    final String routePath = pageRoute.toString().substring(0, pageRoute.length - 1);

    return routePath;
  }
}
