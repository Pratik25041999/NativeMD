import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nativemg/common/collections/widget_collections.dart';
import 'package:nativemg/common/widgets/app_bar.dart';
import 'package:nativemg/common/widgets/buttons.dart';
import 'package:nativemg/common/widgets/sizes.dart';
import 'package:nativemg/common/widgets/text.dart';
import 'package:nativemg/screens/pages/home/docto_near_you_page.dart';
import 'package:nativemg/utils/theme_color.dart';

class SelectSpecalistPage extends StatefulWidget {
  const SelectSpecalistPage({Key? key}) : super(key: key);

  @override
  _SelectSpecalistPageState createState() => _SelectSpecalistPageState();
}

class _SelectSpecalistPageState extends State<SelectSpecalistPage> {
  late List<String> _choices;
  late int _choiceIndex = _choices.length + 1;
  late WidgetCollections _collections;
  @override
  void initState() {
    _choices = [
      "General Practitioner",
      "Peadiatric",
      "Obstetrics & Gyneacology",
      "Psychiatry",
      "Nutrition & Dietetics",
      "Pathology",
      "Cardiology",
      "Dentistry",
      "Neurology",
      "Endocrinology / Diabetology",
      "Dermatology",
      "Gastroentrology",
      "Ear, Nose, Throat (ENT)",
      "Urology",
      "Others",
    ];
    _collections = WidgetCollections(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: goBackAppBar("Select Speciality"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            height(16),
            Row(
              children: [
                Flexible(
                  child: Wrap(
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
                            color: _choiceIndex == index
                                ? Colors.white
                                : mdGreyColor),
                      );
                    }),
                  ),
                ),
              ],
            ),
            Flexible(child: height(_collections.contextHeight())),
            customButtons(
              "Choose Doctor",
              () => Get.to(() => const DoctorNearYouPage()),
            ),
            height(20),
          ],
        ),
      ),
    );
  }
}
