import 'package:flutter/material.dart';
import 'package:nexthop_internship/constants.dart';
import 'package:nexthop_internship/components/expandableCard_child.dart';
import 'package:nexthop_internship/components/expandable_card.dart';

class MyProfileScreen extends StatelessWidget {
  static const String id = 'my_profile_screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ListView(children: [
        Padding(
          padding:
              EdgeInsets.only(top: 15.0, left: 25.0, right: 25.0, bottom: 71.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FlatButton(
                    shape: CircleBorder(),
                    onPressed: () {
                      Navigator.pop(context);
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
                    'My Profile',
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
                    bottom: 5.0, right: 10.0, left: 19.0, top: 5.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: kBlueAppColor,
                      size: 60.0,
                    ),
                    SizedBox(width: 15.0),
                    Text(
                      'Add Human',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              ExpandableCard(
                cardTitle: 'John Doe',
                cardIcon: Icon(Icons.person_outline,
                    color: kBlueAppColor, size: 60.0),
                expandableCardChild: ExpandableCardChild(
                  firstChildName: 'E-mail:',
                  firstChildValue: 'johndoe@email.com',
                  secondChildName: 'Phone:',
                  secondChildValue: '+38977122344',
                  thirdChildName: 'Address:',
                  thirdChildValue: 'Street Name 59/3',
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              ExpandableCard(
                cardTitle: 'Family',
                cardIcon: Icon(Icons.people_outline,
                    color: kBlueAppColor, size: 60.0),
                expandableCardChild: ExpandableCardChild(
                  firstChildName: 'Spouse:',
                  firstChildValue: 'Catrine Doe',
                  secondChildName: 'Daughter:',
                  secondChildValue: 'Emilia Doe',
                  thirdChildName: 'Son:',
                  thirdChildValue: 'Ben Doe',
                ),
              ),
              SizedBox(
                height: 30.0,
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
                    bottom: 5.0, right: 10.0, left: 19.0, top: 5.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.credit_card,
                      color: kBlueAppColor,
                      size: 60.0,
                    ),
                    SizedBox(width: 15.0),
                    Text(
                      'Credit Cards',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ])),
    );
  }
}
