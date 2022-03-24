import 'package:flutter/material.dart';
import 'package:nativemg/common/widgets/app_bar.dart';
import 'package:nativemg/screens/pages/common_widget/doctor_card.dart';

class DoctorNearYouPage extends StatefulWidget {
  const DoctorNearYouPage({Key? key}) : super(key: key);

  @override
  _DoctorNearYouPageState createState() => _DoctorNearYouPageState();
}

class _DoctorNearYouPageState extends State<DoctorNearYouPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: goBackAppBar("Doctors near you", action: <Widget>[
        const Icon(Icons.filter_alt_outlined),
      ]),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            return const DoctorCardWidget(bookable: true);
          },
        ),
      ),
    );
  }
}
