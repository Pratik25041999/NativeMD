import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nativemg/common/collections/widget_collections.dart';
import 'package:nativemg/common/widgets/app_bar.dart';
import 'package:nativemg/common/widgets/buttons.dart';
import 'package:nativemg/common/widgets/sizes.dart';
import 'package:nativemg/common/widgets/text.dart';
import 'package:nativemg/screens/set_profile/medical_history/med1.dart';
import 'package:nativemg/screens/set_profile/set_life_style/set6.dart';
import 'package:nativemg/utils/custom_chip.dart';
import 'package:nativemg/utils/theme_color.dart';

class SetLifeStyle5 extends StatefulWidget {
  const SetLifeStyle5({Key? key}) : super(key: key);

  @override
  _SetLifeStyle5State createState() => _SetLifeStyle5State();
}

class _SetLifeStyle5State extends State<SetLifeStyle5> {
  late List<String> _choices;
  late int _choiceIndex = _choices.length + 1;
  late WidgetCollections _collections;

  @override
  void initState() {
    _choices = [
      "Vegeterian",
      "Non-Vegeterian",
      "Vegan",
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
                "Diet",
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
            Flexible(child: height(_collections.contextHeight())),
            customButtons(
              "Save & Next",
              () => Get.to(() => const SetLifeStyle6()),
            ),
            height(20),
          ],
        ),
      ),
    );
  }
}
