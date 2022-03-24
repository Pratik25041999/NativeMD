import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nativemg/common/collections/widget_collections.dart';
import 'package:nativemg/common/widgets/app_bar.dart';
import 'package:nativemg/common/widgets/buttons.dart';
import 'package:nativemg/common/widgets/chip_builder.dart';
import 'package:nativemg/common/widgets/curve_tab.dart';
import 'package:nativemg/common/widgets/custom_decoration.dart';
import 'package:nativemg/common/widgets/custom_image.dart';
import 'package:nativemg/common/widgets/sizes.dart';
import 'package:nativemg/common/widgets/text.dart';
import 'package:nativemg/common/widgets/text_field.dart';
import 'package:nativemg/utils/hex_color.dart';
import 'package:nativemg/utils/theme_color.dart';

class SymptomsPage extends StatefulWidget {
  const SymptomsPage({Key? key}) : super(key: key);

  @override
  _SymptomsPageState createState() => _SymptomsPageState();
}

class _SymptomsPageState extends State<SymptomsPage> {
  TextEditingController nameController = TextEditingController();

  List storingDataList = [];
  final TextEditingController _chipAdding = TextEditingController();

  late WidgetCollections _collections;

  @override
  void initState() {
    _collections = WidgetCollections(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: goBackAppBar("Select Member"),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            DottedBorder(
              borderType: BorderType.RRect,
              color: mdGreenColor,
              padding: EdgeInsets.zero,
              radius: const Radius.circular(12),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                child: Container(
                  width: Get.width,
                  color: mdGreenColor.withOpacity(0.1),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      customImage(
                        "counsult_now",
                        size: 60,
                        color: mdGreenColor,
                      ),
                      width(5),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          textCS(
                            "Appointment slot selected:",
                            size: 13,
                            color: mdGreenColor,
                          ),
                          height(5),
                          textCS(
                            "22nd May 2021, 9:30",
                            size: 16,
                            fontWeight: FontWeight.w600,
                            color: mdGreenColor,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            height(16),
            Row(
              children: [
                textCS(
                  "Symptoms",
                  fontWeight: FontWeight.w600,
                  color: HexColor("#979797"),
                ),
              ],
            ),
            customTextField(
              _chipAdding,
              "Enter",
              onFieldSubmitted: (e) {
                storingDataList.add(e);
                _chipAdding.clear();
                setState(() {});
              },
            ),
            height(10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(storingDataList.length, (i) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: chipBuilder(
                        label: storingDataList[i],
                        onAvatarTap: () {
                          setState(() {
                            storingDataList.removeAt(i);
                          });
                        }),
                  );
                }),
              ),
            ),
            height(10),
            Row(
              children: [
                textCS(
                  "Describe",
                ),
              ],
            ),
            height(5),
            Flexible(
              child: TextFormField(
                controller: nameController,
                maxLines: 7,
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
            height(15),
            Row(
              children: [
                textCS(
                  "Add Attachment",
                ),
              ],
            ),
            height(6),
            Row(
              children: [
                customImage(
                  "counsult_now",
                  size: 60,
                  color: mdGreenColor,
                ),
                width(5),
                customImage(
                  "counsult_now",
                  size: 60,
                  color: mdGreenColor,
                ),
              ],
            )
          ],
        ),
      ),
      bottomSheet: Container(
        color: Colors.white,
        height: 90,
        alignment: Alignment.center,
        child: customButtons(
          "Save & Pay",
          () => Get.to(() => const SymptomsPage()),
        ),
      ),
    );
  }
}
