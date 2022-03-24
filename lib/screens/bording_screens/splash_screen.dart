import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreenPage extends StatefulWidget {
  SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  void navigationPage() async {
    // var firstTime = await SharedPref.getIsFirstTime();
    if (mounted)
      Future.delayed(Duration(seconds: 3), () async {
        // Network.currentUser == null
        //     ? firstTime == true || firstTime == null
        //         ? Navigator.of(context)
        //             .pushReplacementNamed("/on_boarding_screen")
        //         : Navigator.of(context).pushReplacementNamed("/sign_in_page")
        //     : Navigator.of(context).pushReplacementNamed("/home_screen");
        Navigator.of(context).pushReplacementNamed("/sign_in_page");
      });
  }

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeOut);
    animation.addListener(() => this.setState(() {}));
    animationController.forward();

    Timer(Duration.zero, navigationPage);
  }

  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'assets/img/onBoarding/splash_screen.png',
          fit: BoxFit.cover,
          // width: MediaQuery.of(context).size.width,
          width: animation.value * 250,
          height: animation.value * 250,
          // filterQuality: FilterQuality.medium,
        ),
      ),
      // Stack(
      //   fit: StackFit.expand,
      //   children: <Widget>[
      //     Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: <Widget>[
      //         Image.asset(
      //           'assets/img/onBoarding/Splash.gif',
      //           // width: animation.value * 250,
      //           // height: animation.value * 250,
      //           // filterQuality: FilterQuality.medium,
      //         ),
      //         Text(
      //           "Blood",
      //           style: TextStyle(
      //             fontSize: animation.value * 70,
      //             fontWeight: FontWeight.bold,
      //             color: HexColor("#585858"),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
    );
  }
}
