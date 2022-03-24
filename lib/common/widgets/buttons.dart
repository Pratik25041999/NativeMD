import 'package:flutter/material.dart';
import 'package:nativemg/common/widgets/text.dart';
import 'package:nativemg/utils/theme_color.dart';

ElevatedButton customButtons(String text, void Function() click) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      fixedSize: const Size(300, 50),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      elevation: 0,
    ),
    onPressed: () => click(),
    child: textCS(
      text,
      size: 16,
      color: mdWhiteColor,
    ),
  );
}

ElevatedButton smallCustomButtons(String text, void Function() click) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      elevation: 0,
    ),
    onPressed: () => click(),
    child: textCS(
      text,
      size: 16,
      color: mdWhiteColor,
    ),
  );
}

ElevatedButton smallCustomButtonsOutlined(String text, void Function() click) {
  return ElevatedButton(
    style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
        elevation: MaterialStateProperty.all(0),
        padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 25, vertical: 10)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            side: BorderSide(color: mdGreenColor),
          ),
        )),
    onPressed: () => click(),
    child: textCS(
      text,
      size: 16,
      color: mdGreenColor,
    ),
  );
}
