import 'package:flutter/material.dart';
import 'package:nativemg/utils/hex_color.dart';
import 'package:nativemg/utils/theme_color.dart';

customChipBuild(List _choices, _choiceIndex, setState) {
  return Wrap(
    spacing: 10,
    runSpacing: 10,
    children: List.generate(_choices.length, (index) {
      return ChoiceChip(
        label: Text(_choices[index]),
        selected: _choiceIndex == index,
        selectedColor: mdGreenColor,
        pressElevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        side: BorderSide(
          color: HexColor("#E5E5E5").withOpacity(0.3),
          width: 1.0,
        ),
        onSelected: (bool selected) {
          setState(() {
            _choiceIndex = selected ? index : 0;
          });
        },
        labelPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
        backgroundColor: mdWhiteColor,
        labelStyle: TextStyle(
          color: _choiceIndex == index ? Colors.white : HexColor("#969696"),
        ),
      );
    }),
  );
}
