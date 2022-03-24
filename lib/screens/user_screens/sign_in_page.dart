import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nativemg/common/collections/widget_collections.dart';
import 'package:nativemg/common/widgets/app_bar.dart';
import 'package:nativemg/common/widgets/buttons.dart';
import 'package:nativemg/common/widgets/sizes.dart';
import 'package:nativemg/common/widgets/text.dart';
import 'package:nativemg/common/widgets/text_field.dart';
import 'package:nativemg/screens/home_screen.dart';
import 'package:nativemg/screens/user_screens/sign_up_page.dart';
import 'package:nativemg/screens/user_screens/otp_verification_page.dart';
import 'package:nativemg/utils/hex_color.dart';
import 'package:nativemg/utils/theme_color.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  bool passwordHide = true;

  late WidgetCollections _collections;

  @override
  void initState() {
    _collections = WidgetCollections(context);
    super.initState();
  }

  void showPassword() {
    return setState(() {
      passwordHide = passwordHide == false ? true : false;
    });
  }

  clickHere() {
    Get.to(() => const HomeScreenPage());
  }

  customBottomSheetWidget() {
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
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
                  "Forgot password",
                  size: 24,
                  fontWeight: FontWeight.w500,
                ),
                height(8),
                textCS(
                  "Enter your email for the verification proccesss, we will send 4 digits code to your email.",
                  size: 14,
                  color: mdGreyColor,
                ),
                height(16),
                customTextField(
                  loginController,
                  "Email",
                ),
                height(40),
                Center(
                  child: customButtons(
                    "Send OTP",
                    () {
                      Get.back();
                      Get.to(() =>
                          const VerifyAccountPage(name: "Verify Account"));
                    },
                  ),
                ),
                height(20),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: appBar("Sign In"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            customTextField(
              loginController,
              "Email",
            ),
            height(20),
            customTextField(
              passwordController,
              "Password",
              passwordHide: passwordHide,
              suffixButton: showPassword,
            ),
            height(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () => customBottomSheetWidget(),
                  child: textCS(
                    "Forgot Password?",
                    fontWeight: FontWeight.w400,
                    textAlign: TextAlign.right,
                    color: mdGreenColor,
                  ),
                ),
              ],
            ),
            Flexible(child: height(_collections.contextHeight())),
            customButtons(
              "Sign In",
              clickHere,
            ),
            height(20),
            Container(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  textCS(
                    "New to NativMD? ",
                    size: 16,
                  ),
                  width(5),
                  GestureDetector(
                    child: textCS(
                      "Sign Up",
                      color: mdGreenColor,
                      size: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    onTap: () {
                      Get.to(() => const SignUpPage());
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
