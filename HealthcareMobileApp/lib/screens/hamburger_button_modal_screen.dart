import 'package:flutter/material.dart';
import 'package:nexthop_internship/constants.dart';
import '../components/hamburger_modal_tile.dart';

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
              HamburgerModalTile(
                text: 'History Results',
                icon: Icon(
                  Icons.history,
                  color: kBlueAppColor,
                  size: 40.0,
                ),
              ),
              SizedBox(height: 40.0),
              HamburgerModalTile(
                text: 'Settings',
                icon: Icon(
                  Icons.settings,
                  color: kBlueAppColor,
                  size: 40.0,
                ),
              ),
              SizedBox(height: 40.0),
              HamburgerModalTile(
                text: 'Membership',
                icon: Icon(
                  Icons.star_border,
                  color: kBlueAppColor,
                  size: 40.0,
                ),
              ),
              SizedBox(height: 40.0),
              HamburgerModalTile(
                text: 'Transactions',
                icon: Icon(
                  Icons.attach_money,
                  color: kBlueAppColor,
                  size: 40.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
