import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nativemg/common/widgets/app_bar.dart';
import 'package:nativemg/common/widgets/sizes.dart';
import 'package:nativemg/common/widgets/text.dart';
import 'package:nativemg/screens/set_profile/medical_history/med1.dart';
import 'package:nativemg/screens/set_profile/medical_history/med2.dart';
import 'package:nativemg/screens/set_profile/set_life_style/set2.dart';
import 'package:nativemg/screens/set_profile/set_life_style/set3.dart';
import 'package:nativemg/screens/set_profile/set_life_style/set4.dart';
import 'package:nativemg/screens/set_profile/set_life_style/set5.dart';
import 'package:nativemg/screens/set_profile/set_life_style/set6.dart';
import 'package:nativemg/screens/set_profile/set_life_style/set7.dart';
import 'package:nativemg/screens/set_profile/set_life_style/set8.dart';
import 'package:nativemg/utils/hex_color.dart';
import 'package:nativemg/utils/theme_color.dart';

class MyMedicalHistroyPage extends StatefulWidget {
  const MyMedicalHistroyPage({Key? key}) : super(key: key);

  @override
  _MyMedicalHistroyPageState createState() => _MyMedicalHistroyPageState();
}

class _MyMedicalHistroyPageState extends State<MyMedicalHistroyPage> {
  Widget actionClick(String title, String data, void Function() onClick) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: InkWell(
        onTap: onClick,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textCS(
              title,
              color: HexColor("#969696"),
              size: 16,
            ),
            height(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textCS(data, size: 16),
                const Icon(Icons.arrow_forward_ios_rounded),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: goBackAppBar("Medical History"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Center(
                child: Column(
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
                  ],
                ),
              ),
              height(16),
              actionClick("Allergy", "Nuts, Peanuts", () {
                Get.to(() => const MedicalHistory1());
              }),
              actionClick("Chronic Illness", "No", () {
                Get.to(() => const MedicalHistory2());
              }),
              actionClick("Injuries", "Hand, Burn", () {
                Get.to(() => const SetLifeStyle6());
              }),
              actionClick("Surgeries", "Kidney", () {
                Get.to(() => const SetLifeStyle7());
              }),
              actionClick("Medications", "Meds", () {
                Get.to(() => const SetLifeStyle8());
              }),
            ],
          ),
        ),
      ),
    );
  }
}
