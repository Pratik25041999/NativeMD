import 'package:flutter/material.dart';
import 'package:nativemg/common/widgets/custom_decoration.dart';

class CustomProfileImage extends StatelessWidget {
  final String imageUrl;
  final double? size;
  final void Function()? onTap;
  final double? elevation;
  const CustomProfileImage({
    Key? key,
    required this.imageUrl,
    this.size,
    this.onTap,
    this.elevation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: customDecoration(),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      margin: EdgeInsets.zero,
      child: InkWell(
        onTap: onTap,
        child: CustomAssetImage(
          image: imageUrl,
          size: size ?? 40,
        ),
      ),
    );
  }
}

class CustomAssetImage extends StatelessWidget {
  final String image;
  final double? size;
  final Color? color;
  const CustomAssetImage({
    Key? key,
    required this.image,
    this.size,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: size ?? 20,
      height: size ?? 20,
      color: color,
    );
  }
}
