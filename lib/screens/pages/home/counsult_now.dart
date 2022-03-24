import 'package:flutter/material.dart';
import 'package:nativemg/common/widgets/app_bar.dart';
import 'package:nativemg/screens/pages/common_widget/doctor_card.dart';

class CounsultNowPage extends StatefulWidget {
  const CounsultNowPage({Key? key}) : super(key: key);

  @override
  _CounsultNowPageState createState() => _CounsultNowPageState();
}

class _CounsultNowPageState extends State<CounsultNowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: goBackAppBar("Consult now", action: <Widget>[
        const Icon(Icons.filter_alt_outlined),
      ]),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            return const DoctorCardWidget(bookable: true);
          },
        ),
      ),
    );
  }
}
