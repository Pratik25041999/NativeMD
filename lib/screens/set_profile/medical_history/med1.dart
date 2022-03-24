import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nativemg/common/collections/widget_collections.dart';
import 'package:nativemg/common/widgets/app_bar.dart';
import 'package:nativemg/common/widgets/buttons.dart';
import 'package:nativemg/common/widgets/sizes.dart';
import 'package:nativemg/common/widgets/text.dart';
import 'package:nativemg/screens/set_profile/medical_history/med2.dart';
import 'package:nativemg/utils/theme_color.dart';

class MedicalHistory1 extends StatefulWidget {
  const MedicalHistory1({Key? key}) : super(key: key);

  @override
  _MedicalHistory1State createState() => _MedicalHistory1State();
}

class _MedicalHistory1State extends State<MedicalHistory1> {
  late List<String> _choices;
  late int _choiceIndex = _choices.length + 1;
  late WidgetCollections _collections;

  @override
  void initState() {
    _choices = [
      "Gluton",
      "Seafood",
      "Egg",
      "Peanut",
      "Milk",
      "Pet",
      "Dust",
      "Mold",
      "Sulfine",
      "Others",
    ];
    _collections = WidgetCollections(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: goBackAppBar("Medical History"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: textCS(
                "Do you have any allergy?",
                size: 16,
              ),
            ),
            height(16),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: List.generate(_choices.length, (index) {
                return ChoiceChip(
                  label: Text(_choices[index]),
                  selected: _choiceIndex == index,
                  selectedColor: mdGreenColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  side: BorderSide(
                    color: mdGreyColor.withOpacity(0.2),
                    width: 1.0,
                  ),
                  onSelected: (bool selected) {
                    setState(() {
                      _choiceIndex = selected ? index : 0;
                    });
                  },
                  labelPadding: const EdgeInsets.all(10),
                  backgroundColor: mdWhiteColor,
                  labelStyle: TextStyle(
                      color:
                          _choiceIndex == index ? Colors.white : mdGreyColor),
                );
              }),
            ),
            Flexible(child: height(_collections.contextHeight())),
            customButtons(
              "Save",
              () => Get.to(() => const MedicalHistory2()),
            ),
            height(20),
          ],
        ),
      ),
    );
  }
}
