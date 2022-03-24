import 'package:flutter/material.dart';
import 'package:nativemg/utils/theme_color.dart';

class WidgetCollections {
  late BuildContext newContext;
  late BuildContext dialogContext;

  WidgetCollections(BuildContext context) {
    newContext = context;
  }

  double contextHeight() => MediaQuery.of(newContext).size.height;

  double contextWidth() => MediaQuery.of(newContext).size.height;

  changeFocus(focus) => FocusScope.of(newContext).requestFocus(focus);

  stopLoader() => Navigator.of(dialogContext).pop();

  Future startLoader() {
    return showDialog(
      context: newContext,
      barrierDismissible: false,
      useRootNavigator: true,
      barrierColor: Colors.white.withOpacity(0.6),
      builder: (BuildContext context) {
        dialogContext = context;
        return Center(
          child: CircularProgressIndicator(
            strokeWidth: 5.0,
            valueColor: AlwaysStoppedAnimation(mdGreenColor),
          ),
        );
      },
    );
  }
}
