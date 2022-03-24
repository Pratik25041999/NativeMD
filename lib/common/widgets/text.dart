import 'package:flutter/material.dart';
import 'package:nativemg/utils/theme_color.dart';

Text textCS(
  String text, {
  Color? color,
  double? size,
  FontWeight? fontWeight,
  TextAlign? textAlign,
  bool? underline,
  int? maxLine,
  bool? speacialChar,
}) {
  return Text(
    text,
    style: textStyle(
      color: color,
      size: size,
      weight: fontWeight,
      underline: underline,
    ),
    textAlign: textAlign ?? TextAlign.start,
    maxLines: maxLine,
    softWrap: true,
    overflow: TextOverflow.fade,
  );
}

TextStyle textStyle({
  double? size,
  Color? color,
  FontWeight? weight,
  bool? underline,
}) {
  return TextStyle(
    fontSize: size ?? 14,
    color: color ?? mdBlackColor,
    fontWeight: weight ?? FontWeight.normal,
    decoration:
        underline == true ? TextDecoration.underline : TextDecoration.none,
  );
}
