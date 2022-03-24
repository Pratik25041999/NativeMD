import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nativemg/common/widgets/app_bar.dart';
import 'package:nativemg/common/widgets/buttons.dart';
import 'package:nativemg/common/widgets/curve_tab.dart';
import 'package:nativemg/common/widgets/custom_decoration.dart';
import 'package:nativemg/common/widgets/sizes.dart';
import 'package:nativemg/common/widgets/text.dart';
import 'package:nativemg/screens/pages/common_pages/select_member_page.dart';
import 'package:nativemg/utils/hex_color.dart';
import 'package:nativemg/utils/theme_color.dart';

class SlotBookingPage extends StatefulWidget {
  const SlotBookingPage({Key? key}) : super(key: key);

  @override
  _SlotBookingPageState createState() => _SlotBookingPageState();
}

class _SlotBookingPageState extends State<SlotBookingPage>
    with SingleTickerProviderStateMixin {
  final List<Tab> tabs = <Tab>[
    const Tab(text: "Video Consult"),
    const Tab(text: "In Person"),
  ];

  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: tabs.length);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: goBackAppBar("Select Slot"),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    decoration: customDecoration(),
                    height: 80,
                    width: 80,
                    margin: const EdgeInsets.all(2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        textCS(
                          "Today",
                          fontWeight: FontWeight.bold,
                          color: mdGreenColor,
                        ),
                        height(3),
                        textCS("12 Slots", size: 12, color: mdGreyColor),
                      ],
                    ),
                  ),
                  width(16),
                  Container(
                    decoration: customDecoration(),
                    height: 80,
                    width: 80,
                    margin: const EdgeInsets.all(2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        textCS(
                          "Tomorrow",
                          fontWeight: FontWeight.bold,
                          color: mdGreenColor,
                        ),
                        height(3),
                        textCS("12 Slots", size: 12, color: mdGreenColor),
                      ],
                    ),
                  ),
                  width(16),
                  Container(
                    decoration: customDecoration(),
                    height: 80,
                    width: 80,
                    margin: const EdgeInsets.all(2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        textCS(
                          "21 Apr",
                          fontWeight: FontWeight.bold,
                          color: mdGreenColor,
                        ),
                        height(3),
                        textCS("12 Slots", size: 12, color: mdGreyColor),
                      ],
                    ),
                  ),
                  width(16),
                  Container(
                    decoration: customDecoration(),
                    height: 80,
                    width: 80,
                    margin: const EdgeInsets.all(2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        textCS(
                          "22 Apr",
                          fontWeight: FontWeight.bold,
                          color: mdGreenColor,
                        ),
                        height(3),
                        textCS("12 Slots", size: 12, color: mdGreyColor),
                      ],
                    ),
                  ),
                  width(16),
                ],
              ),
            ),
            height(16),
            Row(
              children: [
                textCS("Appointment type", size: 16),
              ],
            ),
            height(16),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                color: Color.fromRGBO(196, 196, 196, 0.2),
              ),
              child: TabBar(
                unselectedLabelColor: Colors.grey,
                labelColor: mdGreenColor,
                enableFeedback: false,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: const BubbleTabIndicator(
                  indicatorHeight: 45.0,
                  indicatorColor: Colors.white,
                  tabBarIndicatorSize: TabBarIndicatorSize.tab,
                  indicatorRadius: 30,
                  insets: EdgeInsets.all(6),
                ),
                tabs: tabs,
                controller: _tabController,
              ),
            ),
            height(16),
            Row(
              children: [
                textCS("Select time slot", size: 16),
              ],
            ),
            height(16),
            Row(
              children: [
                textCS("Morning"),
              ],
            ),
            height(8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: customChip(),
                    margin: const EdgeInsets.all(2),
                    height: 40,
                    width: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        textCS("10:00", size: 14, color: mdGreyColor),
                      ],
                    ),
                  ),
                  width(16),
                  Container(
                    decoration: customChip(),
                    margin: const EdgeInsets.all(2),
                    height: 40,
                    width: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        textCS("10:30", size: 14, color: mdGreyColor),
                      ],
                    ),
                  ),
                  width(16),
                  Container(
                    decoration: customChip(),
                    margin: const EdgeInsets.all(2),
                    height: 40,
                    width: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        textCS("11:00", size: 14, color: mdGreyColor),
                      ],
                    ),
                  ),
                  width(16),
                  Container(
                    decoration: customChip(),
                    margin: const EdgeInsets.all(2),
                    height: 40,
                    width: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        textCS("11:00", size: 14, color: mdGreyColor),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            height(16),
            Row(
              children: [
                textCS("Afternoon"),
              ],
            ),
            height(8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: customChip(),
                    margin: const EdgeInsets.all(2),
                    height: 40,
                    width: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        textCS("10:00", size: 14, color: mdGreyColor),
                      ],
                    ),
                  ),
                  width(16),
                  Container(
                    decoration: customChip(),
                    margin: const EdgeInsets.all(2),
                    height: 40,
                    width: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        textCS("10:30", size: 14, color: mdGreyColor),
                      ],
                    ),
                  ),
                  width(16),
                  Container(
                    decoration: customChip(),
                    margin: const EdgeInsets.all(2),
                    height: 40,
                    width: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        textCS("11:00", size: 14, color: mdGreyColor),
                      ],
                    ),
                  ),
                  width(16),
                  Container(
                    decoration: customChip(),
                    margin: const EdgeInsets.all(2),
                    height: 40,
                    width: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        textCS("11:00", size: 14, color: mdGreyColor),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            height(16),
            Row(
              children: [
                textCS("Evening"),
              ],
            ),
            height(8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: customChip(),
                    margin: const EdgeInsets.all(2),
                    height: 40,
                    width: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        textCS("10:00", size: 14, color: mdGreyColor),
                      ],
                    ),
                  ),
                  width(16),
                  Container(
                    decoration: customChip(),
                    margin: const EdgeInsets.all(2),
                    height: 40,
                    width: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        textCS("10:30", size: 14, color: mdGreyColor),
                      ],
                    ),
                  ),
                  width(16),
                  Container(
                    decoration: customChip(),
                    margin: const EdgeInsets.all(2),
                    height: 40,
                    width: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        textCS("11:00", size: 14, color: mdGreyColor),
                      ],
                    ),
                  ),
                  width(16),
                  Container(
                    decoration: customChip(),
                    margin: const EdgeInsets.all(2),
                    height: 40,
                    width: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        textCS("11:00", size: 14, color: mdGreyColor),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        color: Colors.white,
        height: 90,
        alignment: Alignment.center,
        child: customButtons(
          "Confirm",
          () => Get.to(() => const SelectedMemberPage()),
        ),
      ),
    );
  }
}
