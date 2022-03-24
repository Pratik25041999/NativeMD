import 'package:flutter/material.dart';
import 'package:nativemg/common/widgets/text.dart';
import 'package:nativemg/utils/theme_color.dart';

TextFormField customTextField(
  TextEditingController textEditingController,
  String text, {
  FocusNode? focusLoginID,
  bool? passwordHide,
  void Function()? suffixButton,
  String? Function(String?)? validators,
  void Function(String)? onChanged,
  AutovalidateMode? autovalidateMode,
  void Function()? ontap,
  void Function(String)? onFieldSubmitted,
}) {
  return TextFormField(
    controller: textEditingController,
    style: textStyle(
      size: 16,
      color: mdBlackTextColor,
    ),
    onTap: ontap,
    readOnly: ontap != null,
    textCapitalization: passwordHide == null
        ? TextCapitalization.sentences
        : TextCapitalization.none,
    validator: validators,
    onChanged: onChanged,
    autovalidateMode: autovalidateMode,
    obscureText: passwordHide ?? false,
    onFieldSubmitted: onFieldSubmitted,
    decoration: inputDecoration(
      text,
      passwordHide: passwordHide,
      suffixButton: suffixButton,
    ),
  );
}

InputDecoration inputDecoration(
  String text, {
  bool? passwordHide,
  void Function()? suffixButton,
}) {
  return InputDecoration(
    labelText: text,
    labelStyle: textStyle(
      color: mdGreyColor,
      size: 16,
    ),
    hintStyle: textStyle(
      size: 16,
      color: mdGreyColor,
    ),
    floatingLabelStyle: textStyle(
      size: 16,
      color: mdGreyColor,
      weight: FontWeight.w600,
    ),
    hintText: "Enter $text",
    alignLabelWithHint: true,
    enabledBorder: underlineBorder(),
    focusedBorder: underlineBorder(color: mdGreenColor),
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    contentPadding: const EdgeInsets.only(bottom: 7),
    suffixIcon: passwordHide != null
        ? IconButton(
            icon: Icon(
              Icons.remove_red_eye,
              color: passwordHide ? Colors.grey : mdGreenColor,
            ),
            onPressed: suffixButton,
          )
        : null,
  );
}

UnderlineInputBorder underlineBorder({Color? color}) {
  return UnderlineInputBorder(
    borderSide: BorderSide(
      color: color ?? const Color.fromRGBO(151, 151, 151, 0.3),
      width: 0.8,
    ),
  );
}
