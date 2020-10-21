import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nexthop_internship/constants.dart';
import 'package:nexthop_internship/screens/login_modal.dart';
import 'package:nexthop_internship/screens/registration_screen.dart';

class AppFirstScreen extends StatelessWidget {
  static const String id = 'app_first_screen';

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
                top: 120.0, left: 25.0, right: 25.0, bottom: 80.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Hero(
                  tag:'HSS',
                  child: Material(
                    color: Colors.transparent,
                    child: Center(
                      child: Text(
                        'HSS',
                        style: TextStyle(
                            fontSize: 90.0,
                            fontWeight: FontWeight.bold,
                            color: kBlueAppColor),
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 25.0),
                      child: Text(
                        'Hello and welcome!',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade600,
                            fontSize: 20.0),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    FlatButton(
                      onPressed: (){
                        Navigator.pushNamed(context, RegistrationScreen.id);
                      },
                      child: Container(
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person_outline,
                              color: kBlueAppColor,
                              size: 50.0,
                            ),
                            SizedBox(width: 15.0),
                            Text(
                              'Become a member',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25.0, top: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already a user?',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.grey.shade600,
                                fontSize: 15.0),
                          ),
                          ButtonTheme(
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap, //limits the touch area to the button area
                            minWidth: 0,
                            height: 0,
                            padding: EdgeInsets.only(left: 5.0),
                            child: FlatButton(
                              onPressed: () {
                                showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    builder: (context) => SingleChildScrollView(
                                        child: Container(
                                          child: LoginModal(),
                                        )));
                              },
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: kBlueAppColor,
                                    fontSize: 15.0),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
