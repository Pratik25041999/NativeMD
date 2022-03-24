import 'package:flutter/material.dart';
import 'package:nativemg/screens/bottom_navigation/navigation_data.dart';
import 'package:nativemg/screens/pages/community/community_page.dart';
import 'package:nativemg/services/call_backs.dart';

class CommunityNav extends StatefulWidget {
  final GlobalKey<ScaffoldState> dKey;
  final HideBottom hideBottomNavigation;
  final TabNavigation tabCallBack;

  const CommunityNav({
    Key? key,
    required this.dKey,
    required this.hideBottomNavigation,
    required this.tabCallBack,
  }) : super(key: key);

  @override
  _CommunityNavState createState() => _CommunityNavState();
}

class _CommunityNavState extends State<CommunityNav> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKeys[TabItem.community],
      initialRoute: '/',
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          builder: (context) => CommunityPage(
            dKey: widget.dKey,
            title: "Community",
            hideBottomNavigationCallBack: widget.hideBottomNavigation,
            tabCallBack: widget.tabCallBack,
            onPush: (data) {},
          ),
        );
      },
    );
  }
}
