import 'package:flutter/material.dart';
import 'package:nexthop_internship/screens/app_home_screen.dart';
import 'package:nexthop_internship/screens/email_login_screen.dart';
import 'package:nexthop_internship/screens/sensor_connected_screen.dart';
import 'package:nexthop_internship/screens/my_profile_screen.dart';
import 'package:nexthop_internship/screens/sensor_connecting_screen.dart';
import 'screens/health_sensor_screen.dart';
import 'screens/app_first_screen.dart';
import 'screens/registration_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: AppHomeScreen.id ,
      initialRoute: AppFirstScreen.id,
      routes: {
        EmailLoginScreen.id: (context) => EmailLoginScreen(),
        AppFirstScreen.id: (context) => AppFirstScreen(),
        AppHomeScreen.id: (context) => AppHomeScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        MyProfileScreen.id: (context) => MyProfileScreen(),
        HealthSensorScreen.id: (context) => HealthSensorScreen(),
        SensorConnectingScreen.id: (context) => SensorConnectingScreen(),
        SensorConnectedScreen.id: (context) => SensorConnectedScreen(),
      },
      title: 'Flutter Demo',
    );
  }
}
