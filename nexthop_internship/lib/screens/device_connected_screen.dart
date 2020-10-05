import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nexthop_internship/constants.dart';
import 'package:nexthop_internship/screens/health_sensor_screen.dart';

class DeviceConnectedScreen extends StatelessWidget {
  static const String id = 'device_connected_screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body:Container(
        color: Color(0xffF0F4F7),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.only(top: 30.0, bottom: 60.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Connected to \n Holter monitor',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kBlueAppColor,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image(
                image: AssetImage("assets/images/sensor.png"),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(blurRadius: 10, color: kBlueAppColor, spreadRadius: 5)
                  ],
                ),
                child: FlatButton(
                  shape: CircleBorder(),
                  onPressed: (){
                    Navigator.pushNamed(context, HealthSensorScreen.id);
                  },
                  child: CircleAvatar(
                    backgroundColor: kBlueAppColor,
                    radius: 30.0,
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      ),
    );
  }
}
