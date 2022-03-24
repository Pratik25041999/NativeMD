import 'package:flutter/material.dart';

Map<TabItem, GlobalKey<NavigatorState>> navigatorKeys = {
  TabItem.home: GlobalKey<NavigatorState>(),
  TabItem.session: GlobalKey<NavigatorState>(),
  TabItem.mood: GlobalKey<NavigatorState>(),
  TabItem.community: GlobalKey<NavigatorState>(),
};

enum TabItem { home, session, mood, community, profile }

Map<TabItem, String> tabName = {
  TabItem.home: 'Home',
  TabItem.session: 'Session',
  TabItem.mood: 'Mood',
  TabItem.community: 'Community',
};
