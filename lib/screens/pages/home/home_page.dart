import 'package:get/get.dart';
import 'package:nativemg/common/widgets/buttons.dart';
import 'package:nativemg/common/widgets/custom_decoration.dart';
import 'package:nativemg/common/widgets/custom_image.dart';
import 'package:nativemg/common/widgets/sizes.dart';
import 'package:nativemg/common/widgets/text.dart';
import 'package:nativemg/common/widgets/text_field.dart';
import 'package:nativemg/screens/pages/common_widget/video_consultant.dart';
import 'package:nativemg/screens/pages/home/counsult_now.dart';
import 'package:nativemg/screens/pages/common_pages/select_specalist.dart';
import 'package:nativemg/screens/pages/common_widget/doctor_card.dart';
import 'package:nativemg/screens/pages/home/notification_page.dart';
import 'package:nativemg/services/call_backs.dart';

import 'package:flutter/material.dart';
import 'package:nativemg/utils/circulor_image.dart';
import 'package:nativemg/utils/hex_color.dart';
import 'package:nativemg/utils/theme_color.dart';

class HomePage extends StatefulWidget {
  final String title;
  final ValueChanged<String> refreshHomePage;
  final GlobalKey<ScaffoldState> dKey;
  final HideBottom hideBottom;
  final TabNavigation tabCallBack;

  const HomePage({
    Key? key,
    required this.dKey,
    required this.refreshHomePage,
    required this.title,
    required this.hideBottom,
    required this.tabCallBack,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textEditingController = TextEditingController();

  String text = "Search for Doctors, Specialities, Hospitals";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        const Icon(Icons.location_on_outlined),
                        width(4),
                        textCS("Olute 102102, Lagos"),
                        width(4),
                        const Icon(Icons.arrow_drop_down_rounded),
                      ],
                    ),
                  ),
                  GestureDetector(
                    child: const Icon(Icons.notifications_none),
                    onTap: () {
                      Get.to(() => const NotificationPage());
                    },
                  ),
                ],
              ),
              height(16),
              Container(
                decoration: customDecoration(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search_sharp,
                        color: HexColor("#969696"),
                      ),
                      width(8),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            enabledBorder:
                                underlineBorder(color: Colors.transparent),
                            border: underlineBorder(color: Colors.transparent),
                            focusedBorder:
                                underlineBorder(color: Colors.transparent),
                            hintText: text,
                            hintStyle: textStyle(color: HexColor("#969696")),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              height(16),
              SizedBox(
                width: Get.width,
                height: 140,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () => Get.to(() => const CounsultNowPage()),
                        child: Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          margin: EdgeInsets.zero,
                          child: SizedBox(
                            height: 140,
                            child: Stack(
                              children: [
                                Image.asset(
                                    "assets/img/counsult_background_image.png"),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    customImage(
                                      "counsult_now",
                                      size: 50,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        textCS(
                                          "Consult Now",
                                          color: mdWhiteColor,
                                          size: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        customImage(
                                          "icon_next_green",
                                          size: 30,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    width(16),
                    Expanded(
                      child: InkWell(
                        onTap: () => Get.to(() => const SelectSpecalistPage()),
                        child: Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          margin: EdgeInsets.zero,
                          child: SizedBox(
                            height: 140,
                            child: Stack(
                              children: [
                                Image.asset(
                                    "assets/img/book_now_background_image.png"),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    customImage(
                                      "book_now",
                                      size: 50,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        textCS(
                                          "Book Now",
                                          color: mdWhiteColor,
                                          size: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        customImage(
                                          "icon_next_green",
                                          size: 30,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              height(20),
              Row(
                children: [
                  Expanded(
                    child: textCS(
                      "Upcoming appointment",
                      size: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  textCS("View all", color: mdGreenColor)
                ],
              ),
              height(16),
              const VideoCounsultantWidget(),
              height(20),
              Row(
                children: [
                  Expanded(
                    child: textCS(
                      "Doctors near you",
                      size: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  textCS("View all", color: mdGreenColor)
                ],
              ),
              height(16),
              const DoctorCardWidget(bookable: true),
              height(20),
              Row(
                children: [
                  Expanded(
                    child: textCS(
                      "Hospitals near you",
                      size: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  textCS("View all", color: mdGreenColor)
                ],
              ),
              height(16),
              SizedBox(
                height: 210,
                child: ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(bottom: 2),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 16),
                      decoration: customDecoration(),
                      width: Get.width / 1.6,
                      child: Column(
                        children: [
                          Container(
                            decoration: customDecorationForTop(),
                            width: Get.width / 1.6,
                            height: 150,
                          ),
                          height(7),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Expanded(
                                  child: textCS(
                                    "Abuja Healthcare Hospi...",
                                    fontWeight: FontWeight.w500,
                                    size: 14,
                                  ),
                                ),
                                textCS("4.4")
                              ],
                            ),
                          ),
                          height(4),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                customImage(
                                  "location_icon",
                                  size: 15,
                                  color: mdGreyColor,
                                ),
                                width(4),
                                Flexible(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      textCS(
                                        "Lagoos downtown ",
                                        size: 13,
                                        color: mdGreyColor,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 7.5),
                                        height: 4,
                                        width: 4,
                                        decoration: BoxDecoration(
                                          color: HexColor('#969696'),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      textCS(
                                        " 25 Doctors",
                                        size: 13,
                                        color: mdGreyColor,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              height(20),
              Row(
                children: [
                  Expanded(
                    child: textCS(
                      "Articles for you",
                      size: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  textCS("View all", color: mdGreenColor)
                ],
              ),
              height(16),
              Container(
                decoration: customDecoration(),
                padding: EdgeInsets.all(8),
                child: Row(
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
                        "assets/img/Article_image.png",
                        height: 80,
                        width: 80,
                        fit: BoxFit.cover,
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
                                "Vestibulum eget magna et erat vest ibulum suscipit et a nisi.",
                                fontWeight: FontWeight.w500,
                                size: 16),
                          ),
                          height(4),
                          Row(
                            children: [
                              Expanded(
                                child: textCS(
                                  "Dr. Susindran Buddha",
                                  size: 14,
                                  color: mdGreyColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              textCS(
                                "21 Apr 2021",
                                size: 14,
                                color: mdGreyColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
