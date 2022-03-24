import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nativemg/common/widgets/sizes.dart';
import 'package:nativemg/common/widgets/text.dart';
import 'package:nativemg/utils/hex_color.dart';
import 'package:nativemg/utils/theme_color.dart';

AppBar appBar(String text) {
  return AppBar(
    backgroundColor: Colors.white,
    toolbarHeight: 75,
    automaticallyImplyLeading: false,
    elevation: 0,
    title: Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Row(
        children: [
          textCS(
            text,
            color: mdBlackTextColor,
            fontWeight: FontWeight.w600,
            size: 24,
          ),
        ],
      ),
    ),
  );
}

AppBar goBackAppBar(
  String text, {
  List<Widget>? action,
  bool skip = false,
}) {
  return AppBar(
    backgroundColor: Colors.white,
    toolbarHeight: 75,
    automaticallyImplyLeading: false,
    elevation: 0,
    title: Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 10),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                  color: HexColor("#F4F4F4"),
                  spreadRadius: 2,
                  blurRadius: 4,
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
              onPressed: () => Get.back(),
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              ),
            ),
          ),
          width(20),
          Expanded(
            child: textCS(
              text,
              color: mdBlackTextColor,
              fontWeight: FontWeight.w600,
              size: 24,
            ),
          ),
          !skip
              ? const SizedBox()
              : textCS(
                  "Skip",
                  color: mdGreenColor,
                  size: 16,
                ),
        ],
      ),
    ),
    actions: action,
  );
}
