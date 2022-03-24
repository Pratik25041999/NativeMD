import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nativemg/common/widgets/app_bar.dart';
import 'package:nativemg/common/widgets/buttons.dart';
import 'package:nativemg/common/widgets/curve_tab.dart';
import 'package:nativemg/common/widgets/sizes.dart';
import 'package:nativemg/common/widgets/text.dart';
import 'package:nativemg/common/widgets/text_field.dart';
import 'package:nativemg/utils/theme_color.dart';

class EditMyProfilePage extends StatefulWidget {
  const EditMyProfilePage({Key? key}) : super(key: key);

  @override
  _EditMyProfilePageState createState() => _EditMyProfilePageState();
}

class _EditMyProfilePageState extends State<EditMyProfilePage>
    with SingleTickerProviderStateMixin {
  final List<Tab> tabs = <Tab>[
    const Tab(text: "Female"),
    const Tab(text: "Male"),
    const Tab(text: "Other"),
  ];
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: tabs.length);
    // TODO: implement initState
    super.initState();
  }

  TextEditingController nameController =
      TextEditingController(text: "Susindran Buddha");
  TextEditingController email =
      TextEditingController(text: "Susindran@gmail.com");
  TextEditingController number = TextEditingController(text: "9892240211");

  TextEditingController dob = TextEditingController(text: "19/12/2001");
  TextEditingController bloodGroup = TextEditingController(text: "A+");
  TextEditingController heightBody = TextEditingController(text: "6.1");
  TextEditingController wieghtBody = TextEditingController(text: "78");
  TextEditingController eContactName =
      TextEditingController(text: "SomeOneIMP");
  TextEditingController eContactNumber = TextEditingController(text: "100");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: goBackAppBar("Edit My Details"),
      bottomSheet: Container(
        color: Colors.white,
        height: 90,
        alignment: Alignment.center,
        child: customButtons(
          "Save",
          () => Get.back(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              textCS("Upload photo"),
              height(16),
              customTextField(
                nameController,
                "Name",
              ),
              height(16),
              customTextField(
                email,
                "Name",
              ),
              height(16),
              customTextField(
                number,
                "Name",
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
              height(16),
              customTextField(
                dob,
                "Date of Birth",
              ),
              height(16),
              customTextField(
                bloodGroup,
                "Blood group",
              ),
              height(16),
              Row(
                children: [
                  Expanded(
                    child: customTextField(
                      heightBody,
                      "Height",
                    ),
                  ),
                  width(10),
                  Expanded(
                    child: customTextField(
                      wieghtBody,
                      "Weight",
                    ),
                  ),
                ],
              ),
              height(16),
              customTextField(
                eContactName,
                "Emergency Contact Name",
              ),
              height(16),
              customTextField(
                eContactNumber,
                "Emergency Contact No",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
