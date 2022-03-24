import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nativemg/common/collections/widget_collections.dart';
import 'package:nativemg/common/widgets/app_bar.dart';
import 'package:nativemg/common/widgets/buttons.dart';
import 'package:nativemg/common/widgets/sizes.dart';
import 'package:nativemg/common/widgets/text.dart';
import 'package:nativemg/common/widgets/text_field.dart';
import 'package:nativemg/screens/user_screens/otp_verification_page.dart';
import 'package:nativemg/utils/hex_color.dart';
import 'package:nativemg/utils/theme_color.dart';
import 'package:country_picker/src/utils.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController loginController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  late Country selection;
  late WidgetCollections _collections;
  TextEditingController mobileNumberController = TextEditingController();

  selectCountry() {
    showCountryPicker(
      context: context,
      showPhoneCode: true,
      countryListTheme: CountryListThemeData(
        flagSize: 25,
        backgroundColor: Colors.white,
        textStyle: const TextStyle(fontSize: 16, color: Colors.blueGrey),
        //Optional. Sets the border radius for the bottomsheet.
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        //Optional. Styles the search field.
        inputDecoration: InputDecoration(
          enabledBorder: underlineBorder(color: Colors.transparent),
          border: underlineBorder(color: Colors.transparent),
          focusedBorder: underlineBorder(color: Colors.transparent),
          hintText: 'Search',
          hintStyle: textStyle(color: HexColor("#969696")),
        ),
      ),
      onSelect: (Country country) {
        setData(country);
      },
    );
  }

  setData(Country setCountry) => countryController.text =
      Utils.countryCodeToEmoji(setCountry.countryCode) +
          '  +${setCountry.phoneCode}';

  @override
  void initState() {
    selection = Country.parse("Nigeria");
    setData(selection);
    _collections = WidgetCollections(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Sign Up"),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            height(10),
            customTextField(
              nameController,
              "Name",
            ),
            height(20),
            customTextField(
              loginController,
              "Email",
            ),
            height(20),
            Row(
              children: [
                SizedBox(
                  width: 80,
                  child: customTextField(
                    countryController,
                    "",
                    ontap: () => selectCountry(),
                  ),
                ),
                width(10),
                Expanded(
                  child: customTextField(
                    mobileNumberController,
                    "Mobile No.",
                  ),
                ),
              ],
            ),
            height(30),
            textCS(
              "By creating account you agree to our",
              size: 14,
              color: mdGreyColor,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                textCS(
                  "Terms of Service",
                  size: 14,
                  color: mdGreenColor,
                  underline: true,
                ),
                textCS(
                  " & ",
                  size: 14,
                  color: mdGreyColor,
                ),
                textCS(
                  "Privacy Policy",
                  size: 14,
                  color: mdGreenColor,
                  underline: true,
                ),
              ],
            ),
            Flexible(child: height(_collections.contextHeight())),
            customButtons(
              "Sign Up",
              () => Get.to(
                  () => const VerifyAccountPage(name: "Verify Email ID")),
            ),
            height(20),
            Container(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  textCS(
                    "Already have an account?",
                    size: 16,
                  ),
                  width(5),
                  GestureDetector(
                    child: textCS(
                      "Sign In",
                      color: mdGreenColor,
                      size: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    onTap: () {
                      Get.back();
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
