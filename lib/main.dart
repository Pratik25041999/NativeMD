import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nativemg/network_service/network.dart';
import 'package:nativemg/screens/bording_screens/splash_screen.dart';
import 'package:nativemg/screens/home_screen.dart';
import 'package:nativemg/screens/user_screens/sign_in_page.dart';
import 'package:nativemg/screens/user_screens/sign_up_page.dart';
import 'package:nativemg/utils/theme_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: primarySwatchColor,
        primaryColor: Colors.white,
        fontFamily: 'Poppins',
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Poppins'),
        primaryTextTheme:
            Theme.of(context).textTheme.apply(fontFamily: 'Poppins'),
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: Network.currentUser == null
          ? SplashScreenPage()
          : const HomeScreenPage(),
      routes: <String, WidgetBuilder>{
        '/splash_screen': (BuildContext context) => SplashScreenPage(),
        '/sign_in_page': (BuildContext context) => SignInPage(),
        '/sign_up_page': (BuildContext context) => SignUpPage(),
        // '/set_up_profile': (BuildContext context) => GenderAndBloodGroupPage(),
        '/home_screen_page': (BuildContext context) => const HomeScreenPage(),
        // '/discloser_page': (BuildContext context) => DiscloserPage(),
        // '/on_boarding_screen': (BuildContext context) => OnBoardingPage(),
      },
    );
  }
}
