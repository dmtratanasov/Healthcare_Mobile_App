import 'package:flutter/material.dart';
import 'package:nexthop_internship/constants.dart';
import 'package:nexthop_internship/components/rounded_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:nexthop_internship/screens/app_first_screen.dart';
import 'package:nexthop_internship/screens/app_home_screen.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;
  bool showSpinner = false;
  String email;
  String password;
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
                top: 30.0, left: 25.0, right: 25.0, bottom: 0.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ButtonTheme(
                    padding: EdgeInsets.only(bottom:10.0),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap, //limits the touch area to the button area
                    minWidth: 0,
                    height: 0,
                    child: FlatButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      child: CircleAvatar(
                        radius: 20.0,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.arrow_back_ios),
                      ),
                    ),
                  ),
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
                  Padding(
                    padding: EdgeInsets.only(left: 5.0, top: 15.0, right: 15.0, bottom: 15.0),
                    child: Text(
                      'Email',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0
                      ),
                    ),
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      email = value;
                    },
                    decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Enter your email',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.0, top: 15.0, right: 15.0, bottom: 15.0),
                    child: Text(
                      'Password',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0
                      ),
                    ),
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.center,
                    obscureText: true,
                    onChanged: (value) {
                      password = value;
                    },
                    decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Enter your password',
                    ),
                  ),
                  // Padding(
                  //   padding: EdgeInsets.only(left: 5.0, top: 15.0, right: 15.0, bottom: 15.0),
                  //   child: Text(
                  //     'Confirm password',
                  //     style: TextStyle(
                  //         color: Colors.grey,
                  //         fontWeight: FontWeight.w600,
                  //         fontSize: 20.0
                  //     ),
                  //   ),
                  // ),
                  // TextField(
                  //   keyboardType: TextInputType.emailAddress,
                  //   textAlign: TextAlign.center,
                  //   onChanged: (value) {
                  //     // email = value;
                  //   },
                  //   decoration: kTextFieldDecoration.copyWith(
                  //     hintText: 'Confirm your password',
                  //   ),
                  // ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top:50.0),
                      child: RoundedButton(
                        color: kBlueAppColor,
                        title: 'Register',
                        onPress: () async{
                          setState(() {
                            showSpinner = true;
                          });
                          try{
                            final newUser = await _auth.createUserWithEmailAndPassword(
                                email: email.toString().trim(), password: password);
                            if(newUser != null){
                              Navigator.pushNamed(context, AppFirstScreen.id);
                            }
                            setState(() {
                              showSpinner = false;
                            });
                          }
                          catch(e){
                            print(e);
                          }
                        },
                      ),
                    ),
                  )
                ],
              ),
            )
          ),
        ),
      ),
    );
  }
}
