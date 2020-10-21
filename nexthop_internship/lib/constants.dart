import 'package:flutter/material.dart';

Color kBlueAppColor = Color(0xff1C7ED5);
Color kGreyColor = Color(0xffD9E1E9);

TextStyle kBlueBoldTextStyle = TextStyle(
    color: kBlueAppColor,
    fontWeight: FontWeight.bold
);

TextStyle kCircleAvatarTextStyle = TextStyle(
    color: Colors.black45,
    fontWeight: FontWeight.w500
);

const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter a value',
  contentPadding:
  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);
