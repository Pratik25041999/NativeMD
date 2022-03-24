import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nativemg/common/widgets/app_bar.dart';
import 'package:nativemg/common/widgets/buttons.dart';
import 'package:nativemg/common/widgets/custom_decoration.dart';
import 'package:nativemg/common/widgets/sizes.dart';
import 'package:nativemg/common/widgets/text.dart';
import 'package:nativemg/utils/hex_color.dart';
import 'package:nativemg/utils/theme_color.dart';

class SetReminderPage extends StatefulWidget {
  const SetReminderPage({Key? key}) : super(key: key);

  @override
  _SetReminderPageState createState() => _SetReminderPageState();
}

class _SetReminderPageState extends State<SetReminderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: goBackAppBar("Set Reminder"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              decoration: customDecoration(),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(child: textCS("Tab213488drfgb4")),
                      textCS("Button"),
                    ],
                  ),
                  height(10),
                  Container(
                    width: Get.width,
                    height: 1,
                    color: HexColor("#E6E6E6"),
                  ),
                  height(10),
                  Row(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          textCS("Reminder Time", color: mdGreyColor),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              textCS("09:45"),
                              width(10),
                              Container(
                                width: 1,
                                height: 20,
                                color: HexColor("#E6E6E6"),
                              ),
                              width(10),
                              textCS("21:45"),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            height(16),
            Container(
              decoration: customDecoration(),
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textCS(
                    "Pill Name",
                    color: mdGreyColor,
                    fontWeight: FontWeight.w600,
                  ),
                  height(4),
                  Row(
                    children: [
                      Expanded(child: textCS("Tab213465afsfda", size: 16)),
                      textCS("Button"),
                    ],
                  ),
                  height(10),
                  textCS("Dosage", color: mdGreyColor),
                  textCS("2 Tab once a day", size: 16),
                  height(10),
                  textCS("Instructions", color: mdGreyColor),
                  textCS("Orally take the 2 tablets", size: 16),
                  height(10),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            textCS("Course end date", color: mdGreyColor),
                            textCS("21 May 2021", size: 16),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            textCS("Refill", color: mdGreyColor),
                            textCS("3", size: 16),
                          ],
                        ),
                      ),
                    ],
                  ),
                  height(10),
                  textCS("Set time for reminder", size: 16),
                  textCS("Orally take the 2 tablets", color: mdGreyColor),
                  height(5),
                  Container(
                    decoration: customDecoration(),
                    padding: EdgeInsets.all(7),
                    child: textCS("09 : 45"),
                  ),
                  height(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      textCS("+Add more reminder", color: mdGreenColor)
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        color: Colors.white,
        height: 90,
        alignment: Alignment.center,
        child: customButtons("Set Reminder", () {}),
      ),
    );
  }
}
