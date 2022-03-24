import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nativemg/common/collections/widget_collections.dart';
import 'package:nativemg/common/widgets/app_bar.dart';
import 'package:nativemg/common/widgets/buttons.dart';
import 'package:nativemg/common/widgets/sizes.dart';
import 'package:nativemg/common/widgets/text.dart';
import 'package:nativemg/screens/user_screens/reset_password_page.dart';
import 'package:nativemg/utils/hex_color.dart';
import 'package:nativemg/utils/pin_code.dart';
import 'package:nativemg/utils/theme_color.dart';

class VerifyAccountPage extends StatefulWidget {
  final String name;
  const VerifyAccountPage({Key? key, required this.name}) : super(key: key);

  @override
  _VerifyAccountPageState createState() => _VerifyAccountPageState();
}

class _VerifyAccountPageState extends State<VerifyAccountPage> {
  late WidgetCollections _collections;
  late String name;

  late TextEditingController controller = TextEditingController();

  @override
  void initState() {
    _collections = WidgetCollections(context);
    name = widget.name.toString().contains("Verify Email ID")
        ? "Set Password"
        : 'Re-Set Password';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: goBackAppBar(widget.name),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            textCS(
              "Please enter the OTP sent to your  email address below.",
              size: 14,
              color: HexColor("#969696"),
            ),
            height(24),
            PinCodeTextField(
              autofocus: true,
              controller: controller,
              hideCharacter: true,
              highlight: true,
              highlightColor: mdGreenColor,
              defaultBorderColor: mdGreyColor,
              hasTextBorderColor: Colors.green,
              maxLength: 4,
              hasError: false,
              onTextChanged: (text) {},
              onDone: (text) {},
              pinBoxWidth: 50,
              pinBoxHeight: 64,
              hasUnderline: false,
              wrapAlignment: WrapAlignment.spaceAround,
              pinBoxDecoration:
                  ProvidedPinBoxDecoration.defaultPinBoxDecoration,
              pinTextStyle: TextStyle(fontSize: 22.0),
              pinTextAnimatedSwitcherTransition:
                  ProvidedPinBoxTextAnimation.scalingTransition,
//                    pinBoxColor: Colors.green[100],
              pinTextAnimatedSwitcherDuration: Duration(milliseconds: 300),
//                    highlightAnimation: true,
              highlightAnimationBeginColor: Colors.black,
              highlightAnimationEndColor: Colors.white12,
              keyboardType: TextInputType.number,
            ),
            textCS(
              "Resend OTP",
              color: mdGreenColor,
              size: 16,
              fontWeight: FontWeight.w600,
            ),
            Flexible(child: height(_collections.contextHeight())),
            customButtons(
              "Verify Account",
              () => Get.to(() => ResetPasswordPage(name: name)),
            ),
            height(20),
          ],
        ),
      ),
    );
  }
}
