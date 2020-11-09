import 'package:flutter/material.dart';
import 'expandableCard_child.dart';

class ExpandableCard extends StatelessWidget {
  ExpandableCard({this.cardIcon, this.cardTitle, this.expandableCardChild});
  final Icon cardIcon;
  final String cardTitle;
  final ExpandableCardChild expandableCardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                offset: Offset(0, 3),
                blurRadius: 7.0,
                spreadRadius: 5.0),
          ]),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)),
        shadowColor: Colors.grey.withOpacity(0.5),
        elevation: 7.0,
        child: Padding(
          padding: EdgeInsets.only(bottom: 5.0, right: 10.0, top: 5.0),
          child: ExpansionTile(
            childrenPadding: EdgeInsets.only(
                left: 15.0, top: 10.0, bottom: 10.0, right: 10.0),
            leading: cardIcon,
            title: Text(
              cardTitle,
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
            children: [
              expandableCardChild,
            ],
          ),
        ),
      ),
    );
  }
}