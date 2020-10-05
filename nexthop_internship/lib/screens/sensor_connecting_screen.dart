import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nexthop_internship/screens/device_connected_screen.dart';

class SensorConnectingScreen extends StatefulWidget {
  static const String id = 'sensor_connecting_screen';

  @override
  _SensorConnectingScreenState createState() => _SensorConnectingScreenState();
}

class _SensorConnectingScreenState extends State<SensorConnectingScreen> {
//  bool cancelAnimation = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, DeviceConnectedScreen.id);
        },
        child: Column(children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Lottie.asset(
              "assets/animations/sensor_connecting_animation.json",
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
              repeat: true,
            ),
          ),
        ]),
      ),
    );
  }
}
