import 'package:flutter/material.dart';

class ExpandableCardChild extends StatelessWidget {
  ExpandableCardChild(
      {this.firstChildName,
        this.firstChildValue,
        this.secondChildName,
        this.secondChildValue,
        this.thirdChildName,
        this.thirdChildValue});

  final String firstChildName;
  final String firstChildValue;
  final String secondChildName;
  final String secondChildValue;
  final String thirdChildName;
  final String thirdChildValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  firstChildName,
                  style: TextStyle(color: Colors.black54, fontSize: 20.0),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  firstChildValue,
                  style: TextStyle(color: Colors.lightBlue, fontSize: 18.0),
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Text(
                  secondChildName,
                  style: TextStyle(color: Colors.black54, fontSize: 20.0),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  secondChildValue,
                  style: TextStyle(color: Colors.lightBlue, fontSize: 18.0),
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Text(
                  thirdChildName,
                  style: TextStyle(color: Colors.black54, fontSize: 20.0),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  thirdChildValue,
                  style: TextStyle(color: Colors.lightBlue, fontSize: 18.0),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}