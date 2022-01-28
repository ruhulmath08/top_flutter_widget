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
        WidgetModel(name: flutterChipTitle),
        WidgetModel(name: silverAppBarTitle),
        WidgetModel(name: wrapWidgetTitle),
        WidgetModel(name: expansionTitle),
        WidgetModel(name: timePickerTitle),
        WidgetModel(name: datePickerTitle),
        WidgetModel(name: popupMenuButtonTitle),
        WidgetModel(name: rangeSliderTitle),
        WidgetModel(name: showHideFlutterWidgetTitle),
        WidgetModel(name: bottomNavigationBarTitle),
        WidgetModel(name: pageViewWidgetTitle),
        WidgetModel(name: modalBottomSheetTitle),
        WidgetModel(name: fadeAnimationTitle),
        WidgetModel(name: expandedWidgetTitle),
        WidgetModel(name: flexibleWidgetTitle),
        WidgetModel(name: disableBackButtonTitle),
        WidgetModel(name: futureBuilderTitle),
        WidgetModel(name: gridPaperTitle),
      ];
}
