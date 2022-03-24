import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nativemg/common/widgets/buttons.dart';
import 'package:nativemg/common/widgets/custom_decoration.dart';
import 'package:nativemg/common/widgets/custom_image.dart';
import 'package:nativemg/common/widgets/sizes.dart';
import 'package:nativemg/common/widgets/text.dart';
import 'package:nativemg/screens/pages/common_pages/doctor_details_page.dart';
import 'package:nativemg/utils/hex_color.dart';
import 'package:nativemg/utils/theme_color.dart';

class DoctorCardWidget extends StatelessWidget {
  final bool bookable;
  const DoctorCardWidget({Key? key, required this.bookable}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: customDecoration(),
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              customImage(
                "abuja_icon",
                size: 20,
              ),
              width(5),
              textCS("Abuja Healthcare Hospital", size: 13),
            ],
          ),
          Container(
            margin: const EdgeInsets.all(10),
            width: Get.width,
            height: 1,
            color: lightGreyColor,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                margin: EdgeInsets.zero,
                child: Image.asset(
                  "assets/img/doctor_near_you_image.png",
                  height: 99,
                  width: 99,
                ),
              ),
              width(10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: textCS(
                              "Dr. Victoria Wellknown",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          textCS("4.4"),
                          Image.asset(
                            "assets/img/one_star.png",
                            width: 12,
                            height: 12,
                          ),
                        ],
                      ),
                    ),
                    height(4),
                    Flexible(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          textCS(
                            "General Medicine ",
                            color: mdGreenColor,
                            size: 13,
                          ),
                        ],
                      ),
                    ),
                    height(4),
                    Flexible(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          textCS(
                            "English, Yoruba, Igbo, Hausa",
                            color: HexColor("#969696"),
                            size: 13,
                          ),
                        ],
                      ),
                    ),
                    height(4),
                    Flexible(
                      child: Row(
                        children: [
                          Expanded(
                            child: textCS(
                              "6 Yrs Exp",
                              color: HexColor("#969696"),
                              size: 13,
                            ),
                          ),
                          const Text(
                            "₦ ",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 16,
                            ),
                          ),
                          textCS(
                            "1,499",
                            size: 16,
                            fontWeight: FontWeight.w600,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          bookable == false
              ? Container()
              : Container(
                  margin: const EdgeInsets.all(10),
                  width: Get.width,
                  height: 1,
                  color: lightGreyColor,
                ),
          bookable == false
              ? Container()
              : Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          textCS(
                            "Next Available Slot",
                            color: HexColor("#969696"),
                          ),
                          textCS(
                            "10:00 AM, tomorrow",
                          ),
                        ],
                      ),
                    ),
                    smallCustomButtons(
                      "Book Now",
                      () => Get.to(() => const DoctorDetailsPage()),
                    ),
                  ],
                )
        ],
      ),
    );
  }
}
