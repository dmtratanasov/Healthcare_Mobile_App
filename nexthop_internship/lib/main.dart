import 'package:flutter/material.dart';
import 'package:nexthop_internship/screens/app_home_screen.dart';
import 'package:nexthop_internship/screens/my_profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppHomeScreen.id ,
      routes: {
        AppHomeScreen.id : (context) => AppHomeScreen(),
        MyProfileScreen.id : (context) => MyProfileScreen()
      },
      title: 'Flutter Demo',
    );
  }
}

