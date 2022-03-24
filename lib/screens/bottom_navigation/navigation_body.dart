import 'package:flutter/material.dart';
import 'package:nativemg/screens/bottom_navigation/nav/community_nav.dart';
import 'package:nativemg/screens/bottom_navigation/nav/home_nav.dart';
import 'package:nativemg/screens/bottom_navigation/nav/mood_nav.dart';
import 'package:nativemg/screens/bottom_navigation/nav/sessions.dart';
import 'package:nativemg/screens/bottom_navigation/navigation_data.dart';
import 'package:nativemg/services/call_backs.dart';

class MainBodyNavigation extends StatelessWidget {
  final TabItem currentTab;
  final GlobalKey<ScaffoldState> dKey;
  final HideBottom hideBottomNavigation;
  final TabNavigation tabCallBack;

  const MainBodyNavigation({
    Key? key,
    required this.currentTab,
    required this.dKey,
    required this.hideBottomNavigation,
    required this.tabCallBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return currentTab.index == 0
        ? HomeNav(
            dKey: dKey,
            hideBottomNavigation: hideBottomNavigation,
            tabCallBack: tabCallBack,
          )
        : currentTab.index == 1
            ? SessionNav(
                dKey: dKey,
                hideBottomNavigation: hideBottomNavigation,
                tabCallBack: tabCallBack,
              )
            : currentTab.index == 2
                ? MoodNav(
                    dKey: dKey,
                    hideBottomNavigation: hideBottomNavigation,
                    tabCallBack: tabCallBack,
                  )
                : currentTab.index == 3
                    ? CommunityNav(
                        dKey: dKey,
                        hideBottomNavigation: hideBottomNavigation,
                        tabCallBack: tabCallBack,
                      )
                    : HomeNav(
                        dKey: dKey,
                        hideBottomNavigation: hideBottomNavigation,
                        tabCallBack: tabCallBack,
                      );
  }
}
