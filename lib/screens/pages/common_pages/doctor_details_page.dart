import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nativemg/common/collections/widget_collections.dart';
import 'package:nativemg/common/widgets/buttons.dart';
import 'package:nativemg/common/widgets/custom_decoration.dart';
import 'package:nativemg/common/widgets/custom_image.dart';
import 'package:nativemg/common/widgets/sizes.dart';
import 'package:nativemg/common/widgets/text.dart';
import 'package:nativemg/screens/pages/common_pages/view_slot_page.dart';
import 'package:nativemg/utils/hex_color.dart';
import 'package:nativemg/utils/theme_color.dart';

class DoctorDetailsPage extends StatefulWidget {
  const DoctorDetailsPage({Key? key}) : super(key: key);

  @override
  _DoctorDetailsPageState createState() => _DoctorDetailsPageState();
}

class _DoctorDetailsPageState extends State<DoctorDetailsPage> {
  late WidgetCollections _collections;
  late TextEditingController loginController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _collections = WidgetCollections(context);
  }

  customBottomSheetWidget() {
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        builder: (context) {
          return Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Container(
                    height: 5,
                    alignment: Alignment.center,
                    width: _collections.contextWidth() / 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: HexColor("#C4C4C4"),
                    ),
                  ),
                ),
                height(24),
                textCS(
                  "Reason for reporting the doctor",
                  size: 16,
                ),
                height(16),
                Flexible(
                  child: TextFormField(
                    controller: loginController,
                    maxLines: 5,
                    textCapitalization: TextCapitalization.sentences,
                    onFieldSubmitted: (value) => Navigator.pop(context),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(bottom: 4, top: 4),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        borderSide:
                            BorderSide(color: HexColor("#F3F3F3"), width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        borderSide:
                            BorderSide(color: HexColor("#F3F3F3"), width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        borderSide:
                            BorderSide(color: HexColor("#F3F3F3"), width: 2),
                      ),
                    ),
                  ),
                ),
                height(40),
                Center(
                  child: customButtons(
                    "Report Doctor",
                    () {},
                  ),
                ),
                height(40),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: Get.width,
            height: 1,
            color: HexColor("#969696"),
          ),
          Container(
            color: Colors.white,
            padding:
                const EdgeInsets.only(left: 25, right: 25, bottom: 10, top: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Expanded(
                      child: smallCustomButtonsOutlined(
                        "Book later",
                        () => Get.to(() => const DoctorDetailsPage()),
                      ),
                    ),
                    width(20),
                    Expanded(
                      child: smallCustomButtons(
                        "View Slot",
                        () => Get.to(() => const SlotBookingPage()),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: mdGreenColor,
              height: 300,
              padding: EdgeInsets.only(
                top: Get.statusBarHeight / 2,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Material(
                      elevation: 2,
                      clipBehavior: Clip.hardEdge,
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: mdGreenColor,
                        ),
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: textCS("Dr. Victoria Wellknown", size: 16)),
                      textCS("4.4"),
                      width(3),
                      Image.asset(
                        "assets/img/one_star.png",
                        width: 12,
                        height: 12,
                      ),
                    ],
                  ),
                  height(8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      textCS("General Medicine"),
                      textCS(
                        "6 Yrs Exp",
                        color: mdGreyColor,
                      ),
                    ],
                  ),
                  height(8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      textCS(
                        "English, Yoruba, Igbo, Hausa",
                        color: mdGreyColor,
                      ),
                    ],
                  ),
                  height(8),
                  Row(
                    children: [
                      Expanded(
                        child: Wrap(
                          children: [
                            customImage(
                              "abuja_icon",
                              size: 20,
                            ),
                            width(5),
                            textCS("Abuja Healthcare Hospital", size: 13),
                          ],
                        ),
                      ),
                      const Text(
                        "₦ ",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 20,
                        ),
                      ),
                      textCS(
                        "1,500",
                        size: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  height(8),
                  Row(
                    children: [
                      Expanded(
                        child: textCS(
                          "Lorem ipsum dolor sit amet, consec tetur a a a a adipiscing elit. Praesent vitae consequat est, hendrerit accumsan nisl Lorem... Read more",
                        ),
                      )
                    ],
                  ),
                  height(16),
                  Container(
                    width: Get.width,
                    height: 1,
                    color: HexColor("#969696"),
                  ),
                  height(16),
                  Row(
                    children: [
                      Expanded(
                        child: textCS(
                          "Upcoming Appointment Slots",
                          fontWeight: FontWeight.w500,
                          size: 16,
                        ),
                      ),
                    ],
                  ),
                  height(16),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          decoration: customDecoration(),
                          height: 80,
                          width: 80,
                          margin: const EdgeInsets.all(2),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              textCS(
                                "Today",
                                fontWeight: FontWeight.w600,
                                color: mdGreenColor,
                              ),
                              height(3),
                              textCS("12 Slots", size: 12, color: mdGreyColor),
                            ],
                          ),
                        ),
                        width(16),
                        Container(
                          decoration: customDecoration(),
                          height: 80,
                          width: 80,
                          margin: const EdgeInsets.all(2),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              textCS(
                                "Tomorrow",
                                fontWeight: FontWeight.w600,
                                color: mdGreenColor,
                              ),
                              height(3),
                              textCS("12 Slots", size: 12, color: mdGreenColor),
                            ],
                          ),
                        ),
                        width(16),
                        Container(
                          decoration: customDecoration(),
                          height: 80,
                          width: 80,
                          margin: const EdgeInsets.all(2),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              textCS(
                                "21 Apr",
                                fontWeight: FontWeight.w600,
                                color: mdGreenColor,
                              ),
                              height(3),
                              textCS("12 Slots", size: 12, color: mdGreyColor),
                            ],
                          ),
                        ),
                        width(16),
                        Container(
                          decoration: customDecoration(),
                          height: 80,
                          width: 80,
                          margin: const EdgeInsets.all(2),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              textCS(
                                "22 Apr",
                                fontWeight: FontWeight.w600,
                                color: mdGreenColor,
                              ),
                              height(3),
                              textCS("12 Slots", size: 12, color: mdGreyColor),
                            ],
                          ),
                        ),
                        width(16),
                      ],
                    ),
                  ),
                  height(16),
                  Row(
                    children: [
                      textCS("Select time slot", size: 16),
                    ],
                  ),
                  height(4),
                  Row(
                    children: [
                      textCS("Morning", size: 14),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: customChip(),
                        margin: const EdgeInsets.all(2),
                        height: 40,
                        width: 80,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            textCS("10:00", size: 14, color: mdGreyColor),
                          ],
                        ),
                      ),
                      width(16),
                      Container(
                        decoration: customChip(),
                        margin: const EdgeInsets.all(2),
                        height: 40,
                        width: 80,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            textCS("10:30", size: 14, color: mdGreyColor),
                          ],
                        ),
                      ),
                      width(16),
                      Container(
                        decoration: customChip(),
                        margin: const EdgeInsets.all(2),
                        height: 40,
                        width: 80,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            textCS("11:00", size: 14, color: mdGreyColor),
                          ],
                        ),
                      ),
                    ],
                  ),
                  height(16),
                  Row(
                    children: [
                      textCS("Afternoon", size: 14),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: customChip(),
                        margin: const EdgeInsets.all(2),
                        height: 40,
                        width: 80,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            textCS("10:00", size: 14, color: mdGreyColor),
                          ],
                        ),
                      ),
                      width(16),
                      Container(
                        decoration: customChip(),
                        margin: const EdgeInsets.all(2),
                        height: 40,
                        width: 80,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            textCS("10:30", size: 14, color: mdGreyColor),
                          ],
                        ),
                      ),
                      width(16),
                      Container(
                        decoration: customChip(),
                        margin: const EdgeInsets.all(2),
                        height: 40,
                        width: 80,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            textCS("11:00", size: 14, color: mdGreyColor),
                          ],
                        ),
                      ),
                    ],
                  ),
                  height(16),
                  Container(
                    width: Get.width,
                    height: 1,
                    color: HexColor("#969696"),
                  ),
                  height(16),
                  Row(
                    children: [
                      Expanded(
                        child: textCS(
                          "Patient Reviews",
                          size: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      textCS("View all", color: mdGreenColor)
                    ],
                  ),
                  height(10),
                  ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    "assets/img/Persone_image.png",
                                    height: 38,
                                    width: 38,
                                  )),
                              width(10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Expanded(
                                          child: textCS(
                                            "Mr.John Doe",
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        textCS("05 Apr 2021",
                                            color: mdGreyColor, size: 12),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/img/one_star.png",
                                          width: 12,
                                          height: 12,
                                        ),
                                        width(3),
                                        Image.asset(
                                          "assets/img/one_star.png",
                                          width: 12,
                                          height: 12,
                                        ),
                                        width(3),
                                        Image.asset(
                                          "assets/img/one_star.png",
                                          width: 12,
                                          height: 12,
                                        ),
                                        width(3),
                                        Image.asset(
                                          "assets/img/one_star.png",
                                          width: 12,
                                          height: 12,
                                        ),
                                        width(3),
                                        Image.asset(
                                          "assets/img/non_star.png",
                                          width: 12,
                                          height: 12,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          height(5),
                          textCS(
                              "Lorem ipsum dolor sit amet, consec tetur adipiscing elit. Praesent vitae consequat est, hendrerit accumsan nisl Lorem Read more..."),
                          height(5),
                        ],
                      );
                    },
                  ),
                  height(16),
                  Container(
                    width: Get.width,
                    height: 1,
                    color: HexColor("#969696"),
                  ),
                  height(16),
                  GestureDetector(
                    onTap: () => customBottomSheetWidget(),
                    child: textCS(
                      "Report Doctor",
                      color: HexColor("#969696"),
                    ),
                  ),
                  height(70),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
