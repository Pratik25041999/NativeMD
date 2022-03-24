import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nativemg/common/widgets/app_bar.dart';
import 'package:nativemg/common/widgets/sizes.dart';
import 'package:nativemg/common/widgets/text.dart';
import 'package:nativemg/screens/set_profile/set_life_style/set2.dart';
import 'package:nativemg/screens/set_profile/set_life_style/set3.dart';
import 'package:nativemg/screens/set_profile/set_life_style/set4.dart';
import 'package:nativemg/screens/set_profile/set_life_style/set5.dart';
import 'package:nativemg/utils/hex_color.dart';
import 'package:nativemg/utils/theme_color.dart';

class LifeStylePage extends StatefulWidget {
  const LifeStylePage({Key? key}) : super(key: key);

  @override
  _LifeStylePageState createState() => _LifeStylePageState();
}

class _LifeStylePageState extends State<LifeStylePage> {
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
      appBar: goBackAppBar("My Lifestyle"),
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
              actionClick("Do you smoke ?", "Yes", () {
                Get.to(() => const SetLifeStyle2());
              }),
              actionClick("Do you consume alcohol ?", "Modrate Drinker", () {
                Get.to(() => const SetLifeStyle3());
              }),
              actionClick("Your Daily activity", "High", () {
                Get.to(() => const SetLifeStyle4());
              }),
              actionClick("Diet", "Vegan", () {
                Get.to(() => const SetLifeStyle5());
              }),
            ],
          ),
        ),
      ),
    );
  }
}
