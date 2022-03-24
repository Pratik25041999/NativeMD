import 'package:flutter/material.dart';
import 'package:nativemg/common/widgets/custom_image.dart';

import 'hex_color.dart';

setCirculorImage(String image, Color color, double size) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: const BorderRadius.all(Radius.circular(30)),
      boxShadow: [
        BoxShadow(
          color: HexColor("#F4F4F4"),
          spreadRadius: 2,
          blurRadius: 2,
          offset: const Offset(0, 0), // changes position of shadow
        ),
      ],
    ),
    child: IconButton(
        color: Colors.white,
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onPressed: () {},
        icon: customImage(
          image,
          color: color,
          size: size,
        )),
  );
}
