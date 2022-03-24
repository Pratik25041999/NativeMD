import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nativemg/common/collections/widget_collections.dart';
import 'package:nativemg/common/widgets/app_bar.dart';
import 'package:nativemg/common/widgets/buttons.dart';
import 'package:nativemg/common/widgets/sizes.dart';
import 'package:nativemg/common/widgets/text.dart';
import 'package:nativemg/screens/set_profile/set_life_style/set3.dart';
import 'package:nativemg/utils/custom_chip.dart';
import 'package:nativemg/utils/hex_color.dart';
import 'package:nativemg/utils/theme_color.dart';

class SetLifeStyle2 extends StatefulWidget {
  const SetLifeStyle2({Key? key}) : super(key: key);

  @override
  _SetLifeStyle2State createState() => _SetLifeStyle2State();
}

class _SetLifeStyle2State extends State<SetLifeStyle2> {
  late List<String> _choices;
  late int _choiceIndex = _choices.length + 1;

  late WidgetCollections _collections;

  @override
  void initState() {
    _choices = [
      "No.",
      "I used to.",
      "Light Smoker.",
      "Medium Smoker.",
      "Heavy Smoker.",
      "Causal Smoker."
    ];
    _collections = WidgetCollections(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: goBackAppBar("Set Lifestyle", skip: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: textCS(
                "Do you Smoke?",
                size: 16,
                textAlign: TextAlign.start,
              ),
            ),
            height(16),
            Row(
              children: [
                Flexible(
                  child: customChipBuild(_choices, _choiceIndex, setState),
                )
              ],
            ),
            // Wrap(
            //   spacing: 10,
            //   runSpacing: 10,
            //   children: List.generate(_choices.length, (index) {
            //     return ChoiceChip(
            //       label: Text(_choices[index]),
            //       selected: _choiceIndex == index,
            //       selectedColor: mdGreenColor,
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(30),
            //       ),
            //       side: BorderSide(
            //         color: HexColor("#E5E5E5").withOpacity(0.3),
            //         width: 1.0,
            //       ),
            //       onSelected: (bool selected) {
            //         setState(() {
            //           _choiceIndex = selected ? index : 0;
            //         });
            //       },
            //       labelPadding:
            //           const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
            //       backgroundColor: mdWhiteColor,
            //       labelStyle: TextStyle(
            //           color:
            //               _choiceIndex == index ? Colors.white : mdGreyColor),
            //     );
            //   }),
            // ),
            Flexible(child: height(_collections.contextHeight())),
            customButtons(
              "Next",
              () => Get.to(() => const SetLifeStyle3()),
            ),
            height(20),
          ],
        ),
      ),
    );
  }
}
