import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nativemg/common/widgets/custom_decoration.dart';
import 'package:nativemg/common/widgets/custom_image.dart';
import 'package:nativemg/common/widgets/sizes.dart';
import 'package:nativemg/common/widgets/text.dart';
import 'package:nativemg/utils/hex_color.dart';
import 'package:nativemg/utils/theme_color.dart';

class VideoCounsultantWidget extends StatelessWidget {
  const VideoCounsultantWidget({Key? key}) : super(key: key);

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
                "video_icon",
                size: 15,
              ),
              width(5),
              textCS("Video Consultation", size: 13),
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
                margin: EdgeInsets.zero,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset(
                  "assets/img/Video_counsullation_image.png",
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
                      child: textCS(
                        "Dr. Victoria Wellknown",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    height(4),
                    Flexible(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          textCS(
                            "Patient: ",
                            color: HexColor("#969696"),
                            size: 13,
                          ),
                          Flexible(
                              child: textCS(
                            "Jason",
                            size: 13,
                          )),
                        ],
                      ),
                    ),
                    height(4),
                    Flexible(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          textCS(
                            "For: ",
                            color: HexColor("#969696"),
                            size: 13,
                          ),
                          Flexible(
                              child: textCS(
                            "Fever",
                            size: 13,
                          )),
                        ],
                      ),
                    ),
                    height(4),
                    textCS(
                      "21 Apr 2021, 14:30",
                      size: 16,
                      color: mdGreenColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
