import 'package:flutter/material.dart';
import 'package:nexthop_internship/constants.dart';
import 'package:nexthop_internship/screens/email_login_screen.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

class LoginModal extends StatelessWidget {
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
              SizedBox(
                height: 50.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ButtonTheme(
                    padding: EdgeInsets.zero,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, EmailLoginScreen.id);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF1877F2),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              offset: Offset(0, 4),
                              blurRadius: 7.0,
                            ),
                          ],
                        ),
                        padding: EdgeInsets.only(
                            bottom: 5.0, right: 10.0, left: 15.0, top: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.mail_outline,
                              color: Colors.white,
                              size: 27.0,
                            ),
                            SizedBox(width: 15.0),
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0, right: 10.0),
                              child: Text(
                                'Email',
                                style: kBlueBoldTextStyle.copyWith(
                                    color: Colors.white, fontSize: 18.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  FacebookSignInButton(
                    onPressed: () {},
                  ),
                  SizedBox(height: 20.0),
                  GoogleSignInButton(
                    onPressed: () {},
                  ),
                  SizedBox(height: 20.0),
                  AppleSignInButton(
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
