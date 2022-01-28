import 'package:flutter/material.dart';
import 'package:top_flutter_widget/model/widget_models.dart';

class HomeScreen extends StatelessWidget {
  final String title;
  const HomeScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final int cardPerRow = (screenWidth / 200).round();
    List<WidgetModel> widgetModel = WidgetModel.fetchAll();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        physics: const BouncingScrollPhysics(),
        itemCount: widgetModel.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: cardPerRow,
          childAspectRatio: 3,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemBuilder: (BuildContext context, int index) {
          String title = widgetModel[index].name;
          return InkWell(
            onTap: () => Navigator.pushNamed(
              context,
              getRouteFromTitle(widgetModel[index].name),
            ),
            child: Card(
              margin: EdgeInsets.zero,
              elevation: 5,
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 1, color: Colors.white),
                      ),
                      child: Center(
                        child: Text(
                          '${index + 1}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: Text(
                        title,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
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

    final String routePath =
        pageRoute.toString().substring(0, pageRoute.length - 1);

    return routePath;
  }
}
