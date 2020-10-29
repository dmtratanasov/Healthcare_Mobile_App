import 'package:flutter/material.dart';
import 'package:nexthop_internship/constants.dart';

class HamburgerModalTile extends StatelessWidget {
  final Icon icon;
  final String text;

  HamburgerModalTile({this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          icon,
          SizedBox(width: 15.0),
          Text(
            text,
            style: kBlueBoldTextStyle.copyWith(
                color: Colors.black45, fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}