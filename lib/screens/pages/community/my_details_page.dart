import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nativemg/common/widgets/app_bar.dart';
import 'package:nativemg/common/widgets/sizes.dart';
import 'package:nativemg/common/widgets/text.dart';
import 'package:nativemg/screens/pages/community/edit_my_profile.dart';
import 'package:nativemg/utils/hex_color.dart';
import 'package:nativemg/utils/theme_color.dart';

class MyDetailsPage extends StatefulWidget {
  const MyDetailsPage({Key? key}) : super(key: key);

  @override
  _MyDetailsPageState createState() => _MyDetailsPageState();
}

class _MyDetailsPageState extends State<MyDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: goBackAppBar("My Details"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: mdGreenColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    height(8),
                    textCS("Susindran Buddha", size: 16),
                    InkWell(
                      onTap: () => Get.to(() => const EditMyProfilePage()),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.edit,
                            color: mdGreenColor,
                          ),
                          width(5),
                          textCS(
                            "Edit",
                            size: 16,
                            underline: true,
                            color: mdGreenColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              height(16),
              textCS("Email Address", size: 16, color: HexColor("#969696")),
              textCS("susindran.buddha@live.com", size: 16),
              height(16),
              textCS("Mobile No", size: 16, color: HexColor("#969696")),
              textCS("+91 9833488426", size: 16),
              height(16),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        textCS("Gender", size: 16, color: HexColor("#969696")),
                        textCS("Male", size: 16),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        textCS("Date of Birth",
                            size: 16, color: HexColor("#969696")),
                        textCS("18 Jun 1995", size: 16),
                      ],
                    ),
                  ),
                ],
              ),
              height(16),
              textCS("Blood type", size: 16, color: HexColor("#969696")),
              textCS("O+", size: 16),
              height(16),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        textCS("Height", size: 16, color: HexColor("#969696")),
                        textCS("5.11 ft", size: 16),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        textCS("Weight", size: 16, color: HexColor("#969696")),
                        textCS("148 lbs", size: 16),
                      ],
                    ),
                  ),
                ],
              ),
              height(16),
              textCS("Emergency Contact", size: 16, color: HexColor("#969696")),
              textCS("Tushar Mahdhik", size: 16),
              textCS("+91 8776928597", size: 16),
            ],
          ),
        ),
      ),
    );
  }
}
