import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nativemg/common/widgets/app_bar.dart';
import 'package:nativemg/common/widgets/custom_image.dart';
import 'package:nativemg/common/widgets/sizes.dart';
import 'package:nativemg/common/widgets/text.dart';
import 'package:nativemg/screens/pages/community/life_style.dart';
import 'package:nativemg/screens/pages/community/medical_reports_page.dart';
import 'package:nativemg/screens/pages/community/my_appointsment_page.dart';
import 'package:nativemg/screens/pages/community/my_details_page.dart';
import 'package:nativemg/screens/pages/community/my_medical_history_page.dart';
import 'package:nativemg/screens/pages/community/my_prescriptions.dart';
import 'package:nativemg/services/call_backs.dart';
import 'package:nativemg/utils/hex_color.dart';
import 'package:nativemg/utils/theme_color.dart';

class CommunityPage extends StatefulWidget {
  final String title;
  final ValueChanged<String> onPush;
  final GlobalKey<ScaffoldState> dKey;
  final HideBottom hideBottomNavigationCallBack;
  final TabNavigation tabCallBack;

  const CommunityPage({
    Key? key,
    required this.onPush,
    required this.dKey,
    required this.hideBottomNavigationCallBack,
    required this.title,
    required this.tabCallBack,
  }) : super(key: key);

  @override
  _CommunityPageState createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  Widget actionClick(String title, void Function() onClick) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: InkWell(
        onTap: onClick,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            textCS(title, size: 16),
            Image.asset("assets/img/forword_icon.png"),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Profile"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 60.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          color: mdGreenColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                      height(8),
                      textCS("Omobolaji ", size: 13, color: HexColor("#969696"))
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: mdGreenColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                      height(8),
                      textCS("Susindran Buddha", size: 16),
                      height(3),
                      textCS(
                        "+ Add Family Member",
                        size: 12,
                        color: mdGreenColor,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 60.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          color: mdGreenColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                      height(8),
                      textCS("Tushar", size: 13, color: HexColor("#969696"))
                    ],
                  ),
                ],
              ),
              actionClick(
                "My Details",
                () => Get.to(() => const MyDetailsPage()),
              ),
              actionClick(
                "My Lifestyle",
                () => Get.to(() => const LifeStylePage()),
              ),
              actionClick(
                "My Medical History",
                () => Get.to(() => const MyMedicalHistroyPage()),
              ),
              actionClick(
                "My Medical Reports",
                () => Get.to(() => const MedicalReportsPage()),
              ),
              actionClick(
                "My Appointments",
                () => Get.to(() => const MyAppointmentPage()),
              ),
              actionClick(
                "My Prescriptions",
                () => Get.to(() => const MyPrescriptionsPage()),
              ),
              height(24),
              Container(
                width: Get.width,
                height: 0.5,
                color: HexColor("#969696"),
              ),
              height(8),
              actionClick("Cards Added", () {}),
              actionClick("Invite Others To App", () {}),
              actionClick("Privacy Policy", () {}),
              height(40),
              Row(
                children: [
                  textCS("Logout", size: 16),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
