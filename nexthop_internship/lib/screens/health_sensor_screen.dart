import 'package:flutter/material.dart';
import 'package:nexthop_internship/constants.dart';
import 'package:nexthop_internship/screens/app_home_screen.dart';
import 'package:nexthop_internship/screens/sensor_connecting_screen.dart';

class HealthSensorScreen extends StatefulWidget {
  static const String id = 'health_sensor_screen';

  @override
  _HealthSensorScreenState createState() => _HealthSensorScreenState();
}

class _HealthSensorScreenState extends State<HealthSensorScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ListView(children: [
        Padding(
          padding: EdgeInsets.only(top: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FlatButton(
                    shape: CircleBorder(),
                    onPressed: () {
                      Navigator.pushNamed(context, AppHomeScreen.id);
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 32.0,
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 50.0,
                        color: kBlueAppColor,
                      ),
                    ),
                  ),
                  Text(
                    'Health Devices',
                    style: kBlueBoldTextStyle.copyWith(fontSize: 30.0),
                  ),
                  FlatButton(
                    shape: CircleBorder(),
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (context) => SingleChildScrollView(
                          child: Container(
                              //Todo: Hamburger menu container
                              ),
                        ),
                      );
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 32.0,
                      child: Icon(
                        Icons.list,
                        size: 60.0,
                        color: kBlueAppColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0,
                    left: 25.0, right: 25.0,
                    bottom: 71.0),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                offset: Offset(0, 3),
                                blurRadius: 7.0,
                                spreadRadius: 5.0),
                          ]),
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: 15.0),
                          Text(
                            'Holter monitor',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black54,
                            size: 40.0,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                offset: Offset(0, 3),
                                blurRadius: 7.0,
                                spreadRadius: 5.0),
                          ]),
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: 15.0),
                          Text(
                            'Glucometer',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black54,
                            size: 40.0,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                offset: Offset(0, 3),
                                blurRadius: 7.0,
                                spreadRadius: 5.0),
                          ]),
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: 15.0),
                          Text(
                            'Blood pressure monitor',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black54,
                            size: 40.0,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                offset: Offset(0, 3),
                                blurRadius: 7.0,
                                spreadRadius: 5.0),
                          ]),
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: 15.0),
                          Text(
                            'Temporal thermometer',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black54,
                            size: 40.0,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, SensorConnectingScreen.id);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: kBlueAppColor,
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xff1C7ED5).withOpacity(0.5),
                                  offset: Offset(0, 3),
                                  blurRadius: 7.0,
                                  spreadRadius: 5.0),
                            ]),
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(width: 15.0),
                            Text(
                              'Add new device',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.w400),
                            ),
                            Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 40.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ])),
    );
  }
}
