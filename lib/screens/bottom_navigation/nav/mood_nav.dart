import 'package:nativemg/screens/bottom_navigation/navigation_data.dart';
import 'package:nativemg/screens/pages/mood/mood_page.dart';
import 'package:nativemg/services/call_backs.dart';
import 'package:flutter/material.dart';

class MoodNav extends StatefulWidget {
  final GlobalKey<ScaffoldState> dKey;
  final HideBottom hideBottomNavigation;
  final TabNavigation tabCallBack;

  const MoodNav({
    Key? key,
    required this.dKey,
    required this.tabCallBack,
    required this.hideBottomNavigation,
  }) : super(key: key);

  @override
  _MoodNavState createState() => _MoodNavState();
}

class _MoodNavState extends State<MoodNav> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKeys[TabItem.mood],
      initialRoute: '/',
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          builder: (context) => MoodPage(
            dKey: widget.dKey,
            title: "Mood",
            hideBottomNavigation: widget.hideBottomNavigation,
            tabCallBack: widget.tabCallBack,
            onPush: (data) {},
          ),
        );
      },
    );
  }
}
