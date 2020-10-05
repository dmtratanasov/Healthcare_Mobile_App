import 'package:flutter/material.dart';
import 'package:nexthop_internship/screens/app_home_screen.dart';
import 'package:nexthop_internship/screens/device_connected_screen.dart';
import 'package:nexthop_internship/screens/my_profile_screen.dart';
import 'package:nexthop_internship/screens/sensor_connecting_screen.dart';
import 'screens/health_sensor_screen.dart';

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
        MyProfileScreen.id : (context) => MyProfileScreen(),
        HealthSensorScreen.id : (context) => HealthSensorScreen(),
        SensorConnectingScreen.id : (context) => SensorConnectingScreen(),
        DeviceConnectedScreen.id : (context) => DeviceConnectedScreen(),
      },
      title: 'Flutter Demo',
    );
  }
}

