import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nexthop_internship/constants.dart';
import 'package:nexthop_internship/screens/hamburger_button_modal_screen.dart';
import 'package:nexthop_internship/screens/my_profile_screen.dart';

class AppHomeScreen extends StatelessWidget{
  static const String id = 'app_home_screen';
  final String userName = 'Damjan';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/homeScreen_background.jpg"),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: EdgeInsets.only(
                top: 15.0, left: 25.0, right: 25.0, bottom: 80.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        FlatButton(
                          onPressed: (){
                            Navigator.pushNamed(context, MyProfileScreen.id);
                          },
                          shape: CircleBorder() ,
                          child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 32.0,
                              child: Icon(
                                Icons.person_outline,
                                size: 60.0,
                                color: kBlueAppColor,
                              )),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Welcome,',
                                style: kBlueBoldTextStyle.copyWith(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15.0)),
                            Text(
                              userName,
                              style: kBlueBoldTextStyle.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 18.0),
                            )
                          ],
                        ),
                      ],
                    ),
                    FlatButton(
                      shape: CircleBorder(),
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            builder: (context) => SingleChildScrollView(
                                    child: Container(
                                  child: HamburgerButtonModalScreen(),
                                )));
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
                  padding: EdgeInsets.only(
                      bottom: 10.0, right: 10.0, left: 15.0, top: 10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.watch_later,
                        color: kBlueAppColor,
                        size: 50.0,
                      ),
                      SizedBox(width: 15.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Reminders',
                            style: kBlueBoldTextStyle.copyWith(
                                color: Colors.black45, fontSize: 18.0),
                          ),
                          Text(
                            'Have you taken your pills?',
                            style: kBlueBoldTextStyle.copyWith(
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle ,
                                  boxShadow: [
                                    BoxShadow(color: kGreyColor,spreadRadius: 9.0,blurRadius: 6.0,offset: Offset(0,3))
                                  ]
                                ),
                                child: CircleAvatar(
                                  radius: 60.0,
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.video_call,
                                    color: kBlueAppColor,
                                    size: 80.0,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Video',
                                style: kCircleAvatarTextStyle,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle ,
                                    boxShadow: [
                                      BoxShadow(color: kGreyColor,spreadRadius: 9.0,blurRadius: 6.0,offset: Offset(0,3))
                                    ]
                                ),
                                child: CircleAvatar(
                                  radius: 60.0,
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.calendar_today,
                                    color: kBlueAppColor,
                                    size: 80.0,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Booking',
                                style: kCircleAvatarTextStyle,
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle ,
                                    boxShadow: [
                                      BoxShadow(color: kGreyColor,spreadRadius: 9.0,blurRadius: 6.0,offset: Offset(0,3))
                                    ]
                                ),
                                child: CircleAvatar(
                                    radius: 60.0,
                                    backgroundColor: Colors.white,
                                    child: Text(
                                      'SOS',
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 40.0,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Emergency \n SOS',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle ,
                                    boxShadow: [
                                      BoxShadow(color: kGreyColor,spreadRadius: 9.0,blurRadius: 6.0,offset: Offset(0,3))
                                    ]
                                ),
                                child: CircleAvatar(
                                  radius: 60.0,
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.graphic_eq,
                                    color: kBlueAppColor,
                                    size: 80.0,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Health \n sensor',
                                style: kCircleAvatarTextStyle,
                                textAlign: TextAlign.center,
                              )
                            ],
                          )
                        ],
                      ),
                    ]),
                    Row(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
