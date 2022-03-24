import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nativemg/common/collections/widget_collections.dart';
import 'package:nativemg/common/widgets/app_bar.dart';
import 'package:nativemg/common/widgets/buttons.dart';
import 'package:nativemg/common/widgets/sizes.dart';
import 'package:nativemg/common/widgets/text_field.dart';
import 'package:nativemg/screens/set_profile/set_life_style/set1.dart';

class ResetPasswordPage extends StatefulWidget {
  final String name;
  const ResetPasswordPage({Key? key, required this.name}) : super(key: key);

  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  bool _isPasswordVisible = true, _isConfirmPasswordVisible = true;

  late WidgetCollections _collections;

  void showPassword() {
    setState(() {
      _isPasswordVisible = _isPasswordVisible == false ? true : false;
      unfocus();
    });
  }

  void showIsConfPassword() {
    setState(() {
      _isConfirmPasswordVisible =
          _isConfirmPasswordVisible == false ? true : false;
      unfocus();
    });
  }

  void unfocus() {
    return FocusScope.of(context).unfocus();
  }

  @override
  void initState() {
    _collections = WidgetCollections(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(widget.name),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            customTextField(
              passwordController,
              "New Password",
              passwordHide: _isPasswordVisible,
              suffixButton: showPassword,
            ),
            height(35),
            customTextField(
              confirmPasswordController,
              "Confirm Password",
              passwordHide: _isConfirmPasswordVisible,
              suffixButton: showIsConfPassword,
            ),
            Flexible(child: height(_collections.contextHeight())),
            customButtons(
                "Set Password", () => Get.to(() => const SetLifeStyle1())),
            height(20),
          ],
        ),
      ),
    );
  }
}
