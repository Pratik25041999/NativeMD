import 'package:flutter/material.dart';
import 'package:nativemg/common/widgets/text.dart';
import 'package:nativemg/utils/theme_color.dart';

Widget chipBuilder({required String label, required VoidCallback onAvatarTap}) {
  return RawChip(
    onDeleted: onAvatarTap,
    deleteIcon: Icon(
      Icons.cancel,
      color: mdWhiteColor,
      size: 20,
    ),
    padding: const EdgeInsets.all(7),
    backgroundColor: mdGreenColor,
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    label: textCS(
      label,
      color: mdWhiteColor,
      size: 14,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
      side: BorderSide(color: mdGreyColor, width: 0),
    ),
  );
}
