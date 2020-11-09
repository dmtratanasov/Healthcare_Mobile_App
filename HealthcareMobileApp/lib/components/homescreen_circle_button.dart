import 'package:flutter/material.dart';
import 'package:nexthop_internship/constants.dart';

class HomeScreenCircleButton extends StatelessWidget {
  final Icon icon;
  final String text;
  final Function onPressed;

  HomeScreenCircleButton({this.text, this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
            BoxShadow(
                color: kGreyColor,
                spreadRadius: 9.0,
                blurRadius: 6.0,
                offset: Offset(0, 3))
          ]),
          child: FlatButton(
            shape: CircleBorder(),
            onPressed: onPressed,
            child: CircleAvatar(
              radius: 60.0,
              backgroundColor: Colors.white,
              child: icon,
            ),
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          text,
          style: kCircleAvatarTextStyle,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}