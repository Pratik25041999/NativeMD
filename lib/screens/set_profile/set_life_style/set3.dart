import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nativemg/common/collections/widget_collections.dart';
import 'package:nativemg/common/widgets/app_bar.dart';
import 'package:nativemg/common/widgets/buttons.dart';
import 'package:nativemg/common/widgets/sizes.dart';
import 'package:nativemg/common/widgets/text.dart';
import 'package:nativemg/screens/set_profile/set_life_style/set4.dart';
import 'package:nativemg/utils/custom_chip.dart';
import 'package:nativemg/utils/theme_color.dart';

class SetLifeStyle3 extends StatefulWidget {
  const SetLifeStyle3({Key? key}) : super(key: key);

  @override
  _SetLifeStyle3State createState() => _SetLifeStyle3State();
}

class _SetLifeStyle3State extends State<SetLifeStyle3> {
  late List<String> _choices;
  late int _choiceIndex = _choices.length + 1;
  late WidgetCollections _collections;

  @override
  void initState() {
    _choices = [
      "Non-Drinker",
      "Light Drinker.",
      "Modrate Drinker.",
      "Heavy Drinker.",
      "Stopped Drinking.",
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
                "Do you consume alcohol?",
                size: 16,
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
            //         color: mdGreyColor.withOpacity(0.2),
            //         width: 1.0,
            //       ),
            //       onSelected: (bool selected) {
            //         setState(() {
            //           _choiceIndex = selected ? index : 0;
            //         });
            //       },
            //       labelPadding: const EdgeInsets.all(10),
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
              () => Get.to(() => const SetLifeStyle4()),
            ),
            height(20),
          ],
        ),
      ),
    );
  }
}
