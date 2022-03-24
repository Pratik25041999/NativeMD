import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nativemg/common/collections/widget_collections.dart';
import 'package:nativemg/common/widgets/app_bar.dart';
import 'package:nativemg/common/widgets/buttons.dart';
import 'package:nativemg/common/widgets/sizes.dart';
import 'package:nativemg/common/widgets/text.dart';
import 'package:nativemg/screens/set_profile/set_life_style/set11.dart';
import 'package:nativemg/utils/custom_image_holder.dart';
import 'package:nativemg/utils/hex_color.dart';
import 'package:nativemg/utils/theme_color.dart';

class SetLifeStyle10 extends StatefulWidget {
  const SetLifeStyle10({Key? key}) : super(key: key);

  @override
  _SetLifeStyle10State createState() => _SetLifeStyle10State();
}

class _SetLifeStyle10State extends State<SetLifeStyle10> {
  final TextEditingController controller = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  final TextEditingController controller3 = TextEditingController();

  late WidgetCollections _collections;

  @override
  void initState() {
    _collections = WidgetCollections(context);
    super.initState();
  }

  Container customCard() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: mdGreyColor.withOpacity(0.2),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/img/medical_report_image.png",
            height: 70,
            width: 70,
          ),
          width(10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(child: textCS("Report name", size: 16)),
                    textCS(
                      "21 Apr 2021",
                      size: 12,
                      color: mdGreyColor,
                    ),
                    width(4),
                  ],
                ),
                height(4),
                textCS(
                  "Description Description Description asdas sadas asda sasd asd asd Description Description .....",
                  maxLine: 2,
                  color: HexColor("#969696"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: goBackAppBar("Set Lifestyle"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: customCard(),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                textCS(
                  "+Add Another Report",
                  size: 16,
                  color: mdGreenColor,
                ),
              ],
            ),
            Flexible(child: height(_collections.contextHeight())),
            customButtons(
              "Next",
              () => Get.to(() => const SetLifeStyle11()),
            ),
            height(20),
          ],
        ),
      ),
    );
  }
}
