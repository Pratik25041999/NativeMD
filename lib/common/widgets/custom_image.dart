import 'package:flutter/material.dart';

customImage(String imageName, {Color? color, double? size, double? scale}) {
  String image = "assets/img/$imageName.png";
  return Image.asset(
    image,
    width: size ?? 32,
    height: size ?? 32,
    color: color,
    scale: scale,
  );
}
