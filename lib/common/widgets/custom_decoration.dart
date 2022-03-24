import 'package:flutter/material.dart';
import 'package:nativemg/utils/hex_color.dart';
import 'package:nativemg/utils/theme_color.dart';

BoxDecoration customDecoration() {
  return BoxDecoration(
    color: Colors.white,
    borderRadius: const BorderRadius.all(Radius.circular(15)),
    boxShadow: [
      BoxShadow(
        color: HexColor("#F3F3F3"),
        spreadRadius: 1,
        blurRadius: 2,
        offset: const Offset(0, 0), // changes position of shadow
      ),
    ],
  );
}

BoxDecoration customChip() {
  return BoxDecoration(
    color: Colors.white,
    borderRadius: const BorderRadius.all(Radius.circular(30)),
    boxShadow: [
      BoxShadow(
        color: HexColor("#F3F3F3"),
        spreadRadius: 1,
        blurRadius: 2,
        offset: const Offset(0, 0), // changes position of shadow
      ),
    ],
  );
}

BoxDecoration customDecorationForTop() {
  return BoxDecoration(
    color: mdGreenColor,
    borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(15),
      topRight: Radius.circular(15),
    ),
    boxShadow: [
      BoxShadow(
        color: HexColor("#F3F3F3"),
        spreadRadius: 1,
        blurRadius: 2,
        offset: const Offset(0, 0), // changes position of shadow
      ),
    ],
  );
}
