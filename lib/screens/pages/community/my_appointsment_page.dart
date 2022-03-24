import 'package:flutter/material.dart';
import 'package:nativemg/common/widgets/app_bar.dart';
import 'package:nativemg/common/widgets/curve_tab.dart';
import 'package:nativemg/common/widgets/sizes.dart';
import 'package:nativemg/common/widgets/text.dart';
import 'package:nativemg/screens/pages/common_widget/doctor_card.dart';
import 'package:nativemg/screens/pages/common_widget/video_consultant.dart';
import 'package:nativemg/utils/theme_color.dart';

class MyAppointmentPage extends StatefulWidget {
  const MyAppointmentPage({Key? key}) : super(key: key);

  @override
  _MyAppointmentPageState createState() => _MyAppointmentPageState();
}

class _MyAppointmentPageState extends State<MyAppointmentPage>
    with SingleTickerProviderStateMixin {
  final List<Tab> tabs = <Tab>[
    const Tab(text: "Upcoming"),
    const Tab(text: "Past"),
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
      appBar: goBackAppBar("My Appointments"),
      body: Column(
        children: [
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
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: VideoCounsultantWidget(),
                    );
                  },
                ),
                ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: DoctorCardWidget(bookable: false),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
