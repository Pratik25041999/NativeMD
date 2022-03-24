import 'package:flutter/material.dart';
import 'package:nativemg/network_service/network.dart';
import 'package:nativemg/screens/bottom_navigation/bottom_navigation.dart';
import 'package:nativemg/screens/bottom_navigation/navigation_body.dart';
import 'package:nativemg/screens/bottom_navigation/navigation_data.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({Key? key}) : super(key: key);

  @override
  _HomeScreenPageState createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> dKey = GlobalKey<ScaffoldState>();
  late TabItem _currentTab;
  late bool _isVisible;

  @override
  void initState() {
    _isVisible = true;
    _currentTab = TabItem.home;
    checkProfile();
    print("-=-==--=-=${Network.currentUser}");
    super.initState();
  }

  void _selectTab(TabItem tabItem) {
    if (tabItem == _currentTab) {
      navigatorKeys[tabItem]!.currentState!.popUntil((route) => route.isFirst);
    } else {
      setState(() {
        _currentTab = tabItem;
      });
    }
  }

  checkProfile() {
    Future.delayed(Duration.zero, () async {
      // SharedPrefService.getCompleteProfile().then((value) async {
      //   if (value == false) _nav.navigateRemoveUntil(Navigate to complete profile());
      // });
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
            !await navigatorKeys[_currentTab]!.currentState!.maybePop();
        if (isFirstRouteInCurrentTab) {
          if (_currentTab != TabItem.home) {
            _selectTab(TabItem.home);
            return false;
          }
        }
        return isFirstRouteInCurrentTab;
      },
      child: Scaffold(
        key: dKey,
        body: MainBodyNavigation(
          currentTab: _currentTab,
          dKey: dKey,
          hideBottomNavigation: (value) {
            Future.delayed(Duration.zero, () async {
              _isVisible = value;
              setState(() {});
            });
          },
          tabCallBack: (tabItemVal) {
            Future.delayed(Duration.zero, () async {
              _selectTab(tabItemVal);
              _isVisible = true;
              setState(() {});
            });
          },
        ),
        bottomNavigationBar: SafeArea(
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            height: _isVisible ? 60.0 : 0.0,
            child: _isVisible
                ? AnimatedContainer(
                    curve: Curves.bounceIn,
                    duration: const Duration(milliseconds: 200),
                    height: _isVisible ? 60.0 : 0.0,
                    child: _isVisible
                        ? BottomNavigation(
                            currentTab: _currentTab,
                            onSelectTab: _selectTab,
                          )
                        : const SizedBox(),
                  )
                : const SizedBox(),
          ),
        ),
      ),
    );
  }
}
