import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nativemg/common/widgets/app_bar.dart';
import 'package:nativemg/common/widgets/buttons.dart';
import 'package:nativemg/common/widgets/curve_tab.dart';
import 'package:nativemg/common/widgets/custom_decoration.dart';
import 'package:nativemg/common/widgets/sizes.dart';
import 'package:nativemg/common/widgets/text.dart';
import 'package:nativemg/screens/pages/community/view_prescription.dart';
import 'package:nativemg/utils/theme_color.dart';

class MyPrescriptionsPage extends StatefulWidget {
  const MyPrescriptionsPage({Key? key}) : super(key: key);

  @override
  _MyPrescriptionsPageState createState() => _MyPrescriptionsPageState();
}

class _MyPrescriptionsPageState extends State<MyPrescriptionsPage>
    with SingleTickerProviderStateMixin {
  final List<Tab> tabs = <Tab>[
    const Tab(text: "Active"),
    const Tab(text: "Discontinued "),
  ];

  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: tabs.length);
    super.initState();
  }

  customBottomSheetWidget() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Container(
                    width: 35.0,
                    height: 35.0,
                    decoration: BoxDecoration(
                      color: mdGreenColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                  width(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textCS(
                        "Dr. Shan Ramesh Sharma",
                        fontWeight: FontWeight.w500,
                        size: 16,
                      ),
                      textCS(
                        "25 May 2021",
                        size: 12,
                        color: mdGreyColor,
                      ),
                    ],
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.all(10),
                width: Get.width,
                height: 1,
                color: lightGreyColor,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  textCS("Fever"),
                  textCS("Tab213465 500 mg", size: 16, color: mdGreyColor),
                  textCS("Tab213465afsfda 250 mg",
                      size: 16, color: mdGreyColor),
                ],
              ),
              height(24),
              textCS("Is this prescription active?", size: 16),
              height(24),
              Row(
                children: <Widget>[
                  Expanded(
                    child: smallCustomButtonsOutlined(
                      "Discontinued",
                      () => Get.to(() => null),
                    ),
                  ),
                  width(20),
                  Expanded(
                    child: smallCustomButtons(
                      "Active",
                      () => Get.to(() => null),
                    ),
                  ),
                ],
              ),
              height(20),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: goBackAppBar("My Prescriptions"),
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
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () => customBottomSheetWidget(),
                        child: Container(
                          decoration: customDecoration(),
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(bottom: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 35.0,
                                    height: 35.0,
                                    decoration: BoxDecoration(
                                      color: mdGreenColor,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  width(10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      textCS(
                                        "Dr. Shan Ramesh Sharma",
                                        fontWeight: FontWeight.w500,
                                        size: 16,
                                      ),
                                      textCS(
                                        "25 May 2021",
                                        size: 12,
                                        color: mdGreyColor,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                margin: const EdgeInsets.all(10),
                                width: Get.width,
                                height: 1,
                                color: lightGreyColor,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  textCS("Fever"),
                                  textCS("Tab213465 500 mg",
                                      size: 16, color: mdGreyColor),
                                  textCS("Tab213465afsfda 250 mg",
                                      size: 16, color: mdGreyColor),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () =>
                            Get.to(() => const ViewPrescriptionDetailsPage()),
                        child: Container(
                          decoration: customDecoration(),
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(bottom: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 35.0,
                                    height: 35.0,
                                    decoration: BoxDecoration(
                                      color: mdGreenColor,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  width(10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      textCS(
                                        "Dr. Shan Ramesh Sharma",
                                        fontWeight: FontWeight.w500,
                                        size: 16,
                                      ),
                                      textCS(
                                        "25 May 2021",
                                        size: 12,
                                        color: mdGreyColor,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                margin: const EdgeInsets.all(10),
                                width: Get.width,
                                height: 1,
                                color: lightGreyColor,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  textCS("Fever"),
                                  textCS("Tab213465 500 mg",
                                      size: 16, color: mdGreyColor),
                                  textCS("Tab213465afsfda 250 mg",
                                      size: 16, color: mdGreyColor),
                                ],
                              ),
                            ],
                          ),
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
