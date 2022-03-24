import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nativemg/screens/bottom_navigation/navigation_data.dart';
import 'package:nativemg/utils/theme_color.dart';

class BottomNavigation extends StatefulWidget {
  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;

  const BottomNavigation({
    Key? key,
    required this.currentTab,
    required this.onSelectTab,
  }) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  void initState() {
    super.initState();
  }

  Image setIcons(String image, {Color? color}) {
    return Image.asset(
      image,
      width: 30,
      height: 22,
      color: color ?? mdGreenColor,
    );
  }

  Widget customLabel(String text) {
    return Text(text);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(
                  color: Color.fromRGBO(151, 151, 151, 0.3), width: 1),
            ),
          ),
        ),
        BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 2,
          landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
          selectedItemColor: mdGreenColor,
          selectedFontSize: 10,
          selectedLabelStyle: TextStyle(fontSize: 10, color: mdGreenColor),
          unselectedLabelStyle:
              const TextStyle(color: Color(0xFF707070), fontSize: 10),
          selectedIconTheme: IconThemeData(color: mdGreenColor),
          backgroundColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon:
                  setIcons('assets/bottom_images/home.png', color: mdGreyColor),
              activeIcon: setIcons('assets/bottom_images/home.png',
                  color: mdGreenColor),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: setIcons('assets/bottom_images/session.png',
                  color: mdGreyColor),
              activeIcon: setIcons(
                'assets/bottom_images/session.png',
                color: mdGreenColor,
              ),
              label: "Doctor",
            ),
            BottomNavigationBarItem(
              icon: setIcons('assets/bottom_images/community.png',
                  color: mdGreyColor),
              activeIcon: setIcons('assets/bottom_images/community.png',
                  color: mdGreenColor),
              label: "Community",
            ),
            BottomNavigationBarItem(
              icon:
                  setIcons('assets/bottom_images/mood.png', color: mdGreyColor),
              activeIcon: setIcons('assets/bottom_images/mood.png',
                  color: mdGreenColor),
              label: "Profile",
            ),
          ],
          currentIndex: widget.currentTab.index,
          onTap: (index) => widget.onSelectTab(TabItem.values[index]),
        ),
      ],
    );
  }
}
