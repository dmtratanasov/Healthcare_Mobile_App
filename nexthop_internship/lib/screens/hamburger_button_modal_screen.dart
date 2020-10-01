import 'package:flutter/material.dart';
import 'package:nexthop_internship/constants.dart';

class HamburgerButtonModalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30.0),
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(bottom: 60.0),
          child: Column(
            children: [
              Container(
                height: 5.0,
                width: 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: kBlueAppColor,
                ),
              ),
              SizedBox(height: 50.0,),
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
                    bottom: 5.0, right: 10.0, left: 15.0, top: 5.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.history,
                      color: kBlueAppColor,
                      size: 40.0,
                    ),
                    SizedBox(width: 15.0),
                    Text(
                      'History Results',
                      style: kBlueBoldTextStyle.copyWith(
                          color: Colors.black45, fontSize: 18.0),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40.0),
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
                    bottom: 5.0, right: 10.0, left: 15.0, top: 5.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.settings,
                      color: kBlueAppColor,
                      size: 40.0,
                    ),
                    SizedBox(width: 15.0),
                    Text(
                      'Settings',
                      style: kBlueBoldTextStyle.copyWith(
                          color: Colors.black45, fontSize: 18.0),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40.0),
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
                    bottom: 5.0, right: 10.0, left: 15.0, top: 5.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.star_border,
                      color: kBlueAppColor,
                      size: 40.0,
                    ),
                    SizedBox(width: 15.0),
                    Text(
                      'Membership',
                      style: kBlueBoldTextStyle.copyWith(
                          color: Colors.black45, fontSize: 18.0),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40.0),
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
                    bottom: 5.0, right: 10.0, left: 15.0, top: 5.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.attach_money,
                      color: kBlueAppColor,
                      size: 40.0,
                    ),
                    SizedBox(width: 15.0),
                    Text(
                      'Transactions',
                      style: kBlueBoldTextStyle.copyWith(
                          color: Colors.black45, fontSize: 18.0),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
