import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nativemg/common/collections/widget_collections.dart';
import 'package:nativemg/common/widgets/app_bar.dart';
import 'package:nativemg/common/widgets/buttons.dart';
import 'package:nativemg/common/widgets/sizes.dart';
import 'package:nativemg/common/widgets/text.dart';
import 'package:nativemg/common/widgets/text_field.dart';
import 'package:nativemg/screens/set_profile/set_life_style/set10.dart';
import 'package:nativemg/utils/hex_color.dart';
import 'package:nativemg/utils/image_upload_circule_button.dart';
import 'package:nativemg/utils/theme_color.dart';

class SetLifeStyle9 extends StatefulWidget {
  const SetLifeStyle9({Key? key}) : super(key: key);

  @override
  _SetLifeStyle9State createState() => _SetLifeStyle9State();
}

class _SetLifeStyle9State extends State<SetLifeStyle9> {
  final TextEditingController controller = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  final TextEditingController controller3 = TextEditingController();

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
                "Add Medical Report",
                size: 16,
              ),
            ),
            height(20),
            customCiculeButton("Upload Medical Report"),
            height(30),
            customTextField(
              controller,
              "Title of report",
            ),
            height(30),
            customTextField(
              controller,
              "Date of report",
            ),
            height(30),
            customTextField(
              controller,
              "Describe the attachment",
            ),
            height(30),
            Flexible(child: height(_collections.contextHeight())),
            customButtons(
              "Next",
              () => Get.to(() => const SetLifeStyle10()),
            ),
            height(20),
          ],
        ),
      ),
    );
  }
}
