import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nativemg/common/widgets/app_bar.dart';
import 'package:nativemg/common/widgets/buttons.dart';
import 'package:nativemg/common/widgets/curve_tab.dart';
import 'package:nativemg/common/widgets/custom_decoration.dart';
import 'package:nativemg/common/widgets/custom_image.dart';
import 'package:nativemg/common/widgets/sizes.dart';
import 'package:nativemg/common/widgets/text.dart';
import 'package:nativemg/common/widgets/text_field.dart';
import 'package:nativemg/screens/pages/common_pages/symptoms_page.dart';
import 'package:nativemg/utils/theme_color.dart';

class SelectedMemberPage extends StatefulWidget {
  const SelectedMemberPage({Key? key}) : super(key: key);

  @override
  _SelectedMemberPageState createState() => _SelectedMemberPageState();
}

class _SelectedMemberPageState extends State<SelectedMemberPage>
    with SingleTickerProviderStateMixin {
  final List<Tab> tabs = <Tab>[
    const Tab(text: "Female"),
    const Tab(text: "Male"),
    const Tab(text: "Other"),
  ];
  TextEditingController nameController = TextEditingController();

  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: tabs.length);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: goBackAppBar("Select Member"),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            DottedBorder(
              borderType: BorderType.RRect,
              color: mdGreenColor,
              padding: EdgeInsets.zero,
              radius: const Radius.circular(12),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                child: Container(
                  width: Get.width,
                  color: mdGreenColor.withOpacity(0.1),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      customImage(
                        "counsult_now",
                        size: 60,
                        color: mdGreenColor,
                      ),
                      width(5),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          textCS(
                            "Appointment slot selected:",
                            size: 13,
                            color: mdGreenColor,
                          ),
                          textCS(
                            "22nd May 2021, 9:30",
                            size: 16,
                            fontWeight: FontWeight.w600,
                            color: mdGreenColor,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            height(16),
            Row(
              children: [
                textCS("This appointment is for :", size: 16),
              ],
            ),
            height(16),
            SizedBox(
              height: 105,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: customDecoration(),
                    margin: const EdgeInsets.only(right: 20, top: 2, bottom: 2),
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        customImage(
                          "counsult_now",
                          size: 60,
                          color: mdGreenColor,
                        ),
                        textCS(
                          "Joshua",
                          size: 16,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            height(16),
            Row(
              children: [
                Icon(
                  Icons.add_circle_outline,
                  color: mdGreenColor,
                  size: 30,
                ),
                width(5),
                textCS("Add family member", color: mdGreenColor)
              ],
            ),
            height(10),
            customTextField(
              nameController,
              "Name",
            ),
            height(10),
            customTextField(
              nameController,
              "Date of birth",
            ),
            height(16),
            Row(
              children: [
                textCS(
                  "Gender",
                  size: 16,
                  color: mdGreyColor,
                ),
              ],
            ),
            height(5),
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
          ],
        ),
      ),
      bottomSheet: Container(
        color: Colors.white,
        height: 90,
        alignment: Alignment.center,
        child: customButtons(
          "Book Appointment",
          () => Get.to(() => const SymptomsPage()),
        ),
      ),
    );
  }
}
