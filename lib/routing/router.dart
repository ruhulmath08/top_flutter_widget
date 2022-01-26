import 'package:flutter/material.dart';
import 'package:top_flutter_widget/routing/routing_constants.dart';
import 'package:top_flutter_widget/screens/adaptive_design/adaptive_design_screen.dart';
import 'package:top_flutter_widget/screens/fitted_box/fitted_box_screen.dart';
import 'package:top_flutter_widget/screens/flutter_hero_widget/flutter_hero_widget.dart';
import 'package:top_flutter_widget/screens/home/home_screen.dart';
import 'package:top_flutter_widget/screens/search_bar/search_bar_screen.dart';
import 'package:top_flutter_widget/screens/stepper_screen/stepper_screen.dart';
import 'package:top_flutter_widget/screens/stream_flow/stream_flow_screen.dart';

/*
name route for page navigation
we will control our all navigation from here
*/
MaterialPageRoute<dynamic>? generateRoute(RouteSettings settings) {
  switch (settings.name) {

    //home
    case homeScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const HomeScreen(
          title: homeScreenTitle,
        ),
      );

    //stepper
    case stepperRoute:
      return MaterialPageRoute(
        builder: (context) => const StepperScreen(
          title: stepperTitle,
        ),
      );

    //fitted_box
    case fittedBoxRoute:
      return MaterialPageRoute(
        builder: (context) => const FittedBoxScreen(
          title: fittedBoxTitle,
        ),
      );

    //search_bar
    case searchBarRoute:
      return MaterialPageRoute(
        builder: (context) => const SearchBarScreen(
          title: searchBarTitle,
        ),
      );

    //adaptive_design
    case adaptiveDesignRoute:
      return MaterialPageRoute(
        builder: (context) => const AdaptiveDesignScreen(
          title: adaptiveDesignTitle,
        ),
      );

    //flutter_hero_widget
    case flutterHeroWidgetRoute:
      return MaterialPageRoute(
        builder: (context) => const FlutterHeroWidgetScreen(
          title: flutterHeroWidgetTitle,
        ),
      );

    //stream_flow_screen
    case streamFlowRoute:
      return MaterialPageRoute(
        builder: (context) => const StreamFlowScreen(
          title: streamFlowTitle,
        ),
      );
  }
}
