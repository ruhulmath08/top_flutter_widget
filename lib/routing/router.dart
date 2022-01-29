import 'package:flutter/material.dart';
import 'package:top_flutter_widget/routing/routing_constants.dart';
import 'package:top_flutter_widget/screens/adaptive_design/adaptive_design_screen.dart';
import 'package:top_flutter_widget/screens/alert_dialog/alert_dialog_screen.dart';
import 'package:top_flutter_widget/screens/bottom_navigation_bar/bottom_navigation_bar_screen.dart';
import 'package:top_flutter_widget/screens/date_picker/date_picker_screen.dart';
import 'package:top_flutter_widget/screens/disable_back_button/disable_back_button_screen.dart';
import 'package:top_flutter_widget/screens/expanded_widget/expanded_widget_screen.dart';
import 'package:top_flutter_widget/screens/expansion_tile/expansion_tile.dart';
import 'package:top_flutter_widget/screens/fade_animation/fade_animation_screen.dart';
import 'package:top_flutter_widget/screens/fitted_box/fitted_box_screen.dart';
import 'package:top_flutter_widget/screens/flexible_widget/flexible_widget_screen.dart';
import 'package:top_flutter_widget/screens/flutter_chip/flutter_chip_screen.dart';
import 'package:top_flutter_widget/screens/flutter_hero_widget/flutter_hero_widget.dart';
import 'package:top_flutter_widget/screens/future_builder/future_builder_screen.dart';
import 'package:top_flutter_widget/screens/grid_paper/grid_paper_screen.dart';
import 'package:top_flutter_widget/screens/home/home_screen.dart';
import 'package:top_flutter_widget/screens/modal_bottom_sheet/modal_bottom_sheet_screen.dart';
import 'package:top_flutter_widget/screens/page_view_widget/page_view_widget_screen.dart';
import 'package:top_flutter_widget/screens/popup_menu_button/popup_menu_button_screen.dart';
import 'package:top_flutter_widget/screens/positioned_widget/positioned_widget_screen.dart';
import 'package:top_flutter_widget/screens/range_slider/range_slider_screen.dart';
import 'package:top_flutter_widget/screens/search_bar/search_bar_screen.dart';
import 'package:top_flutter_widget/screens/show_hide_flutter_widget/show_hide_flutter_widget_screen.dart';
import 'package:top_flutter_widget/screens/silver_app_bar/silver_app_bar_screen.dart';
import 'package:top_flutter_widget/screens/spread_operator/spread_operator_screen.dart';
import 'package:top_flutter_widget/screens/stack_widget/stack_widget_screen.dart';
import 'package:top_flutter_widget/screens/stepper_screen/stepper_screen.dart';
import 'package:top_flutter_widget/screens/stream_flow/stream_flow_screen.dart';
import 'package:top_flutter_widget/screens/time_picker/time_picker_screen.dart';
import 'package:top_flutter_widget/screens/tool_tip/tool_tip_screen.dart';
import 'package:top_flutter_widget/screens/wrap_widget/wrap_widget_screen.dart';

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

    //flutter_chip
    case flutterChipRoute:
      return MaterialPageRoute(
        builder: (context) => const FlutterChipScreen(
          title: flutterChipTitle,
        ),
      );

    //silver_app_bar
    case silverAppBarRoute:
      return MaterialPageRoute(
        builder: (context) => const SilverAppBarScreen(
          title: silverAppBarTitle,
        ),
      );

    //wrap_widget
    case wrapWidgetRoute:
      return MaterialPageRoute(
        builder: (context) => const WrapWidgetScreen(
          title: wrapWidgetTitle,
        ),
      );

    //expansion_tile
    case expansionRoute:
      return MaterialPageRoute(
        builder: (context) => const ExpansionTileScreen(
          title: expansionTitle,
        ),
      );

    //time_picker
    case timePickerRoute:
      return MaterialPageRoute(
        builder: (context) => const TimePickerScreen(
          title: timePickerTitle,
        ),
      );

    //date_picker
    case datePickerRoute:
      return MaterialPageRoute(
        builder: (context) => const DatePickerScreen(
          title: datePickerTitle,
        ),
      );

    //popup_menu_button
    case popupMenuButtonRoute:
      return MaterialPageRoute(
        builder: (context) => const PopupMenuButtonScreen(
          title: popupMenuButtonTitle,
        ),
      );

    //range_slider
    case rangeSliderRoute:
      return MaterialPageRoute(
        builder: (context) => const RangeSliderScreen(
          title: rangeSliderTitle,
        ),
      );

    //show_hide_flutter_widget
    case showHideFlutterWidgetRoute:
      return MaterialPageRoute(
        builder: (context) => const ShowHideFlutterWidgetScreen(
          title: showHideFlutterWidgetTitle,
        ),
      );

    //bottom_navigation_bar
    case bottomNavigationBarRoute:
      return MaterialPageRoute(
        builder: (context) => const BottomNavigationBarScreen(
          title: bottomNavigationBarTitle,
        ),
      );

    //page_view_widget
    case pageViewWidgetRoute:
      return MaterialPageRoute(
        builder: (context) => const PageViewWidgetScreen(
          title: pageViewWidgetTitle,
        ),
      );

    //modal_bottom_sheet
    case modalBottomSheetRoute:
      return MaterialPageRoute(
        builder: (context) => const ModalBottomSheetScreen(
          title: modalBottomSheetTitle,
        ),
      );

    //fade_animation
    case fadeAnimationRoute:
      return MaterialPageRoute(
        builder: (context) => const FadeAnimationScreen(
          title: fadeAnimationTitle,
        ),
      );

    //expanded_widget
    case expandedWidgetRoute:
      return MaterialPageRoute(
        builder: (context) => const ExpandedWidgetScreen(
          title: expandedWidgetTitle,
        ),
      );

    //flexible_widget
    case flexibleWidgetRoute:
      return MaterialPageRoute(
        builder: (context) => const FlexibleWidgetScreen(
          title: flexibleWidgetTitle,
        ),
      );

    //disable_back_button
    case disableBackButtonRoute:
      return MaterialPageRoute(
        builder: (context) => const DisableBackButtonScreen(
          title: disableBackButtonTitle,
        ),
      );

    //future_builder
    case futureBuilderRoute:
      return MaterialPageRoute(
        builder: (context) => const FutureBuilderScreen(
          title: futureBuilderTitle,
        ),
      );

    //grid_paper
    case gridPaperRoute:
      return MaterialPageRoute(
        builder: (context) => const GridPaperScreen(
          title: gridPaperTitle,
        ),
      );

    //tool_tip
    case toolTipRoute:
      return MaterialPageRoute(
        builder: (context) => const ToolTipScreen(
          title: toolTipTitle,
        ),
      );

    //spread_operator
    case spreadOperatorRoute:
      return MaterialPageRoute(
        builder: (context) => const SpreadOperatorScreen(
          title: spreadOperatorTitle,
        ),
      );

    //stack_widget
    case stackWidgetRoute:
      return MaterialPageRoute(
        builder: (context) => const StackWidgetScreen(
          title: stackWidgetTitle,
        ),
      );

    //positioned_widget
    case positionedWidgetRoute:
      return MaterialPageRoute(
        builder: (context) => const PositionedWidgetScreen(
          title: positionedWidgetTitle,
        ),
      );

    //alert_dialog
    case alertDialogRoute:
      return MaterialPageRoute(
        builder: (context) => const AlertDialogScreen(
          title: alertDialogTitle,
        ),
      );
  }
}
