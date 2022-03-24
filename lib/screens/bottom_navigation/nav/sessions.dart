import 'package:nativemg/screens/bottom_navigation/navigation_data.dart';
import 'package:nativemg/screens/pages/sessions/session_page.dart';
import 'package:nativemg/services/call_backs.dart';
import 'package:flutter/material.dart';

class SessionNav extends StatefulWidget {
  final GlobalKey<ScaffoldState> dKey;
  final HideBottom hideBottomNavigation;
  final TabNavigation tabCallBack;

  const SessionNav({
    Key? key,
    required this.dKey,
    required this.tabCallBack,
    required this.hideBottomNavigation,
  }) : super(key: key);

  @override
  _SessionNavState createState() => _SessionNavState();
}

class _SessionNavState extends State<SessionNav> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKeys[TabItem.session],
      initialRoute: '/',
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          builder: (context) => SessionPage(
            dKey: widget.dKey,
            title: "Session",
            hideBottomNavigation: widget.hideBottomNavigation,
            tabCallBack: widget.tabCallBack,
            onPush: (data) {},
          ),
        );
      },
    );
  }
}
