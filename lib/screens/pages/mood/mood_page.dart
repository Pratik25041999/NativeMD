import 'package:nativemg/common/widgets/app_bar.dart';
import 'package:nativemg/common/widgets/custom_decoration.dart';
import 'package:nativemg/common/widgets/sizes.dart';
import 'package:nativemg/common/widgets/text.dart';
import 'package:nativemg/services/call_backs.dart';
import 'package:flutter/material.dart';
import 'package:nativemg/utils/theme_color.dart';

class MoodPage extends StatefulWidget {
  final String title;
  final ValueChanged<String> onPush;
  final GlobalKey<ScaffoldState> dKey;
  final HideBottom hideBottomNavigation;
  final TabNavigation tabCallBack;

  const MoodPage({
    Key? key,
    required this.onPush,
    required this.dKey,
    required this.title,
    required this.hideBottomNavigation,
    required this.tabCallBack,
  }) : super(key: key);

  @override
  _MoodPageState createState() => _MoodPageState();
}

class _MoodPageState extends State<MoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Community"),
      body: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: customDecoration(),
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.only(bottom: 16),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  margin: EdgeInsets.zero,
                  color: mdGreenColor,
                  child: const SizedBox(
                    height: 80,
                    width: 80,
                  ),
                ),
                width(10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: textCS(
                          "Vestibulum eget magna et erat vest ibulum asd ad ",
                          fontWeight: FontWeight.w500,
                          size: 16,
                        ),
                      ),
                      height(4),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: textCS(
                              "Dr. Susindran Buddha",
                              size: 14,
                              color: mdGreyColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          textCS(
                            "21 Apr 2021",
                            size: 14,
                            color: mdGreyColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
