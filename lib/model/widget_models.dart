import 'package:top_flutter_widget/routing/routing_constants.dart';

class WidgetModel {
  final String name;

  WidgetModel({required this.name});

  static List<WidgetModel> fetchAll() => [
        WidgetModel(name: stepperTitle),
        WidgetModel(name: fittedBoxTitle),
        WidgetModel(name: searchBarTitle),
        WidgetModel(name: adaptiveDesignTitle),
        WidgetModel(name: flutterHeroWidgetTitle),
        WidgetModel(name: streamFlowTitle),
      ];
}
