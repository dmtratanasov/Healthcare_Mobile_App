import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lottie/lottie.dart';
import 'package:nexthop_internship/screens/sensor_connected_screen.dart';

class SensorConnectingScreen extends StatefulWidget {
  static const String id = 'sensor_connecting_screen';

  @override
  _SensorConnectingScreenState createState() => _SensorConnectingScreenState();
}

class _SensorConnectingScreenState extends State<SensorConnectingScreen> {
//  bool cancelAnimation = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, SensorConnectedScreen.id);
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Container(
              child: Lottie.asset(
                  "assets/animations/sensor_connecting_animation.json"),
            ),
          ]),
        ),
      ),
    );
  }
}
