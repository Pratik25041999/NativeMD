import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nativemg/common/widgets/app_bar.dart';
import 'package:nativemg/common/widgets/custom_decoration.dart';
import 'package:nativemg/common/widgets/sizes.dart';
import 'package:nativemg/common/widgets/text.dart';
import 'package:nativemg/screens/set_profile/set_life_style/set9.dart';
import 'package:nativemg/utils/theme_color.dart';

class MedicalReportsPage extends StatefulWidget {
  const MedicalReportsPage({Key? key}) : super(key: key);

  @override
  _MedicalReportsPageState createState() => _MedicalReportsPageState();
}

class _MedicalReportsPageState extends State<MedicalReportsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: goBackAppBar("My Medical Reports"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: customDecoration(),
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.only(bottom: 20),
                    width: Get.width,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          margin: EdgeInsets.zero,
                          color: mdGreenColor,
                          child: const SizedBox(
                            height: 60,
                            width: 60,
                          ),
                        ),
                        width(10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              textCS("Report name", size: 16),
                              textCS(
                                "Description Description Description Description Description .....",
                                color: mdGreyColor,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () => Get.to(() => const SetLifeStyle9()),
                    child: textCS(
                      "+Add Another Report",
                      color: mdGreenColor,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
