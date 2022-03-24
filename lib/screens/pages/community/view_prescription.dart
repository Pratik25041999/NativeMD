import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nativemg/common/widgets/app_bar.dart';
import 'package:nativemg/common/widgets/buttons.dart';
import 'package:nativemg/common/widgets/custom_image.dart';
import 'package:nativemg/common/widgets/sizes.dart';
import 'package:nativemg/common/widgets/text.dart';
import 'package:nativemg/screens/pages/community/set_reminder_page.dart';
import 'package:nativemg/utils/hex_color.dart';
import 'package:nativemg/utils/theme_color.dart';

class ViewPrescriptionDetailsPage extends StatefulWidget {
  const ViewPrescriptionDetailsPage({Key? key}) : super(key: key);

  @override
  _ViewPrescriptionDetailsPageState createState() =>
      _ViewPrescriptionDetailsPageState();
}

class _ViewPrescriptionDetailsPageState
    extends State<ViewPrescriptionDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: goBackAppBar("My Prescription"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Container(
                          width: 35.0,
                          height: 35.0,
                          decoration: BoxDecoration(
                            color: mdGreenColor,
                            shape: BoxShape.circle,
                          ),
                        ),
                        width(10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            textCS(
                              "Dr. Shan Ramesh Sharma",
                              fontWeight: FontWeight.w500,
                              size: 16,
                            ),
                            textCS(
                              "25 May 2021",
                              size: 12,
                              color: mdGreyColor,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Material(
                    elevation: 2,
                    clipBehavior: Clip.hardEdge,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.call,
                        color: mdGreenColor,
                      ),
                    ),
                  ),
                ],
              ),
              height(16),
              Container(
                width: Get.width,
                height: 1,
                color: HexColor("#E6E6E6"),
              ),
              height(10),
              textCS(
                "Fever",
                color: mdGreenColor,
                size: 16,
                fontWeight: FontWeight.w600,
              ),
              height(8),
              textCS("Symptoms : Headache, Vomitting"),
              textCS(
                "Fusce volutpat quam et ipsum pellentesque, vulputate tempor metus faucibus.",
                color: mdGreyColor,
              ),
              height(16),
              Container(
                width: Get.width,
                height: 1,
                color: HexColor("#E6E6E6"),
              ),
              height(10),
              textCS("Medication :"),
              Row(
                children: [
                  Material(
                    elevation: 2,
                    clipBehavior: Clip.hardEdge,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: customImage("tablet_icon", scale: 28, size: 28),
                    ),
                  ),
                  width(10),
                  textCS(
                    "Tab213465afsfda 250 mg",
                    color: mdGreenColor,
                    size: 16,
                    fontWeight: FontWeight.w600,
                  ),
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
              height(16),
              Container(
                width: Get.width,
                height: 1,
                color: HexColor("#E6E6E6"),
              ),
              height(16),
              Row(
                children: [
                  Material(
                    elevation: 2,
                    clipBehavior: Clip.hardEdge,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: customImage("tablet_icon", scale: 28, size: 28),
                    ),
                  ),
                  width(10),
                  textCS(
                    "Tab213465afsfda 250 mg",
                    color: mdGreenColor,
                    size: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
              height(16),
              Container(
                width: Get.width,
                height: 1,
                color: HexColor("#E6E6E6"),
              ),
              height(16),
              textCS("Tests :"),
              textCS(
                "Chikungunya Virus Antibody IgM",
                color: mdGreenColor,
                size: 16,
                fontWeight: FontWeight.w600,
              ),
              textCS(
                "COVID-19 Virus Antibody adfIgM",
                color: mdGreenColor,
                size: 16,
                fontWeight: FontWeight.w600,
              ),
              height(16),
              textCS("Notes :"),
              textCS(
                "Integer sed tempus ante. Pellentesque tristique varius nulla, a fringilla sapien porta quis. Suspendisse urna ante, posuere eleifend diam eget, vehicula sodales dolor. Maecenas eros orci.",
                color: mdGreyColor,
              ),
              height(16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: smallCustomButtons(
                        "Set Reminder",
                        () => Get.to(() => const SetReminderPage()),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
