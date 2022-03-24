import 'package:flutter/material.dart';
import 'package:nativemg/screens/bottom_navigation/navigation_data.dart';
import 'package:nativemg/screens/pages/home/home_page.dart';
import 'package:nativemg/services/call_backs.dart';

class HomeNav extends StatefulWidget {
  final GlobalKey<ScaffoldState> dKey;
  final HideBottom hideBottomNavigation;
  final TabNavigation tabCallBack;

  const HomeNav({
    Key? key,
    required this.dKey,
    required this.tabCallBack,
    required this.hideBottomNavigation,
  }) : super(key: key);

  @override
  _HomeNavState createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKeys[TabItem.home],
      initialRoute: '/',
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          builder: (context) => HomePage(
            dKey: widget.dKey,
            title: "Home",
            hideBottom: widget.hideBottomNavigation,
            tabCallBack: widget.tabCallBack,
            refreshHomePage: (data) async {},
          ),
        );
      },
    );
  }
}
