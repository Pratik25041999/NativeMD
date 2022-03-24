import 'package:get/get.dart';
import 'package:nativemg/common/collections/widget_collections.dart';
import 'package:nativemg/common/widgets/app_bar.dart';
import 'package:nativemg/common/widgets/curve_tab.dart';
import 'package:nativemg/common/widgets/custom_decoration.dart';
import 'package:nativemg/common/widgets/custom_image.dart';
import 'package:nativemg/common/widgets/sizes.dart';
import 'package:nativemg/common/widgets/text.dart';
import 'package:nativemg/screens/pages/common_widget/doctor_card.dart';
import 'package:nativemg/services/call_backs.dart';
import 'package:flutter/material.dart';
import 'package:nativemg/utils/theme_color.dart';

class SessionPage extends StatefulWidget {
  final String title;
  final ValueChanged<String> onPush;
  final GlobalKey<ScaffoldState> dKey;
  final HideBottom hideBottomNavigation;
  final TabNavigation tabCallBack;

  const SessionPage({
    Key? key,
    required this.onPush,
    required this.dKey,
    required this.title,
    required this.hideBottomNavigation,
    required this.tabCallBack,
  }) : super(key: key);

  @override
  _SessionPageState createState() => _SessionPageState();
}

class _SessionPageState extends State<SessionPage>
    with SingleTickerProviderStateMixin {
  final List<Tab> tabs = <Tab>[
    const Tab(text: "Doctors"),
    const Tab(text: "Hospitals"),
  ];

  late WidgetCollections _collections;

  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(vsync: this, length: tabs.length);
    _collections = WidgetCollections(context);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Doctors"),
      body: Column(
        children: [
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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView.builder(
                    itemCount: 6,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return const Padding(
                        padding: EdgeInsets.only(bottom: 16, right: 1, left: 1),
                        child: DoctorCardWidget(bookable: true),
                      );
                    },
                  ),
                  ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: customDecoration(),
                        margin: EdgeInsets.only(bottom: 16, left: 1, right: 1),
                        padding: EdgeInsets.only(bottom: 10),
                        child: Column(
                          children: [
                            Card(
                              margin: EdgeInsets.zero,
                              color: mdGreenColor,
                              child: SizedBox(
                                height: 130,
                                width: Get.width,
                              ),
                            ),
                            height(8),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [
                                  Expanded(
                                      child:
                                          textCS("Abuja Healthcare Hospital")),
                                  textCS("4.4"),
                                ],
                              ),
                            ),
                            height(4),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [
                                  customImage(
                                    "location_icon",
                                    size: 15,
                                    color: mdGreyColor,
                                  ),
                                  width(4),
                                  Flexible(
                                    child: textCS(
                                      "Lagoos downtown * 25 Doctors",
                                      size: 13,
                                      color: mdGreyColor,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
