import 'package:flutter/material.dart';
import 'package:nativemg/common/widgets/sizes.dart';
import 'package:nativemg/common/widgets/text.dart';
import 'package:nativemg/utils/hex_color.dart';
import 'package:nativemg/utils/theme_color.dart';

customCiculeButton(String text) {
  return Container(
    alignment: Alignment.center,
    child: Column(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(50)),
            border: Border.all(
              width: 3,
              color: Colors.green,
              style: BorderStyle.solid,
            ),
          ),
          child: Center(
            child: Icon(
              Icons.add,
              color: mdGreenColor,
              size: 40,
            ),
          ),
        ),
        height(14),
        textCS(
          text,
          size: 14,
          color: HexColor("#969696"),
        ),
      ],
    ),
  );
}
