import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nativemg/common/collections/widget_collections.dart';
import 'package:nativemg/common/widgets/app_bar.dart';
import 'package:nativemg/common/widgets/buttons.dart';
import 'package:nativemg/common/widgets/chip_builder.dart';
import 'package:nativemg/common/widgets/sizes.dart';
import 'package:nativemg/common/widgets/text.dart';
import 'package:nativemg/common/widgets/text_field.dart';
import 'package:nativemg/screens/set_profile/set_life_style/set5.dart';
import 'package:nativemg/screens/set_profile/set_life_style/set8.dart';
import 'package:nativemg/utils/hex_color.dart';

class SetLifeStyle7 extends StatefulWidget {
  const SetLifeStyle7({Key? key}) : super(key: key);

  @override
  _SetLifeStyle7State createState() => _SetLifeStyle7State();
}

class _SetLifeStyle7State extends State<SetLifeStyle7> {
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
      appBar: goBackAppBar("Set Lifestyle", skip: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: textCS(
                "Do you have any surgeries in past?",
                size: 16,
              ),
            ),
            height(16),
            customTextField(
              _chipAdding,
              "Enter",
              onFieldSubmitted: (e) {
                storingDataList.add(e);
                _chipAdding.clear();
                setState(() {});
              },
            ),
            SizedBox(
              height: 20,
              width: Get.width,
              child: ListView.builder(
                itemCount: storingDataList.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      textCS(
                        "${storingDataList[index]}",
                        color: HexColor("#969696"),
                      ),
                      textCS(
                        ", ",
                      ),
                    ],
                  );
                },
              ),
            ),
            height(16),
            Row(
              children: [
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: List.generate(storingDataList.length, (i) {
                    return chipBuilder(
                        label: storingDataList[i],
                        onAvatarTap: () {
                          setState(() {
                            storingDataList.removeAt(i);
                          });
                        });
                  }),
                ),
              ],
            ),
            Flexible(child: height(_collections.contextHeight())),
            customButtons(
              "Next",
              () => Get.to(() => const SetLifeStyle8()),
            ),
            height(20),
          ],
        ),
      ),
    );
  }
}
