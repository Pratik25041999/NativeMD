import 'package:flutter/material.dart';
import 'package:nativemg/common/widgets/app_bar.dart';
import 'package:nativemg/common/widgets/custom_decoration.dart';
import 'package:nativemg/common/widgets/text.dart';
import 'package:nativemg/utils/hex_color.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: goBackAppBar("Notification"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: customDecoration(),
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    textCS(
                      "Notification title",
                      size: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    textCS("1 hr ago", size: 12, color: HexColor("#969696"))
                  ],
                ),
                textCS(
                  "Describe about the notification Describe about the notification Describe about the",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
