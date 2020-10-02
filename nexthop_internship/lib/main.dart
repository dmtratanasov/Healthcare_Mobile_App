import 'package:flutter/material.dart';
import 'package:nexthop_internship/screens/app_home_screen.dart';
import 'package:nexthop_internship/screens/my_profile_screen.dart';
import 'screens/initial_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: InitialScreen.id ,
      routes: {
        InitialScreen.id : (context) => InitialScreen(),
        AppHomeScreen.id : (context) => AppHomeScreen(),
        MyProfileScreen.id : (context) => MyProfileScreen()
      },
      title: 'Flutter Demo',
    );
  }
}

