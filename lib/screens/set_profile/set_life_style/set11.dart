import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nativemg/common/collections/widget_collections.dart';
import 'package:nativemg/common/widgets/app_bar.dart';
import 'package:nativemg/common/widgets/buttons.dart';
import 'package:nativemg/common/widgets/sizes.dart';
import 'package:nativemg/common/widgets/text.dart';
import 'package:nativemg/screens/home_screen.dart';
import 'package:nativemg/screens/set_profile/set_life_style/set9.dart';
import 'package:nativemg/utils/hex_color.dart';
import 'package:nativemg/utils/theme_color.dart';

class SetLifeStyle11 extends StatefulWidget {
  const SetLifeStyle11({Key? key}) : super(key: key);

  @override
  _SetLifeStyle11State createState() => _SetLifeStyle11State();
}

class _SetLifeStyle11State extends State<SetLifeStyle11> {
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
      appBar: goBackAppBar("Set Lifestyle"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              margin: EdgeInsets.zero,
              child: Image.asset("assets/img/setLife10.png"),
            ),
            height(10),
            Row(
              children: [
                Expanded(
                  child: textCS(
                    "Peter Enzeloma’s Report 1",
                    size: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                textCS(
                  "21 Apr 2021",
                  size: 12,
                  color: mdGreyColor,
                ),
              ],
            ),
            height(8),
            textCS(
                "Lorem ipsum dolor sit amet, consectetur adipi scing elit. Donec semper urna at erat hend rerit, eu posuere purus aucibus. Mae cenas pul vin ar  sa git tis qu am vit ae aliq u am. Proin ege st as  elei fend rutrum. Duis condi men tum nunc nec  he ndr erit pel lente sque. Morbi feu giat cur sus  ut lob ortis nulla dig nissim nec. Pra esent eu ma elem entum, auc tor felis sus cipit, porta pu rus. Inte ger lacinia sem sed dui efficitur volutpat."),
            Flexible(child: height(_collections.contextHeight())),
            customButtons(
              "Next",
              () => Get.offAll(() => const HomeScreenPage()),
            ),
            height(20),
          ],
        ),
      ),
    );
  }
}
