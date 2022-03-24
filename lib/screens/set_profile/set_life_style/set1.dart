import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nativemg/common/collections/widget_collections.dart';
import 'package:nativemg/common/widgets/app_bar.dart';
import 'package:nativemg/common/widgets/buttons.dart';
import 'package:nativemg/common/widgets/curve_tab.dart';
import 'package:nativemg/common/widgets/sizes.dart';
import 'package:nativemg/common/widgets/text.dart';
import 'package:nativemg/common/widgets/text_field.dart';
import 'package:nativemg/screens/set_profile/set_life_style/set2.dart';
import 'package:nativemg/utils/image_upload_circule_button.dart';
import 'package:nativemg/utils/theme_color.dart';

class SetLifeStyle1 extends StatefulWidget {
  const SetLifeStyle1({Key? key}) : super(key: key);

  @override
  _SetLifeStyle1State createState() => _SetLifeStyle1State();
}

class _SetLifeStyle1State extends State<SetLifeStyle1>
    with SingleTickerProviderStateMixin {
  final List<Tab> tabs = <Tab>[
    const Tab(text: "Female"),
    const Tab(text: "Male"),
    const Tab(text: "Other"),
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

  TextEditingController nameController = TextEditingController();
  TextEditingController bloodGroupController = TextEditingController();

  TextEditingController dobController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController emergencyContactNumber = TextEditingController();
  TextEditingController emergencyContactName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: goBackAppBar("Set Lifestyle"),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              customCiculeButton("Upload Profile"),
              height(10),
              customTextField(
                nameController,
                "Name",
              ),
              height(30),
              Row(
                children: [
                  textCS(
                    "Gender",
                    size: 16,
                    color: mdGreyColor,
                  ),
                ],
              ),
              height(10),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
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
                    indicatorHeight: 49.0,
                    indicatorColor: Colors.white,
                    tabBarIndicatorSize: TabBarIndicatorSize.tab,
                    indicatorRadius: 25,
                    insets: EdgeInsets.all(7),
                  ),
                  tabs: tabs,
                  controller: _tabController,
                ),
              ),
              height(20),
              customTextField(
                dobController,
                "Date of Birth",
              ),
              height(30),
              customTextField(
                bloodGroupController,
                "Blood Group",
              ),
              height(30),
              Row(
                children: [
                  Expanded(
                    child: customTextField(
                      heightController,
                      "Height",
                    ),
                  ),
                  width(10),
                  Expanded(
                    child: customTextField(
                      weightController,
                      "Weight",
                    ),
                  ),
                ],
              ),
              height(30),
              customTextField(
                emergencyContactName,
                "Emergency Contact Name",
              ),
              height(30),
              customTextField(
                emergencyContactNumber,
                "Emergency Contact No",
              ),
              height(30),
              customButtons(
                "Next",
                () => Get.to(() => const SetLifeStyle2()),
              ),
              height(20),
            ],
          ),
        ),
      ),
    );
  }
}
