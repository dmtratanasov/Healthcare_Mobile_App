import 'package:flutter/material.dart';
import 'package:nexthop_internship/constants.dart';
import 'package:nexthop_internship/components/rounded_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:nexthop_internship/screens/app_home_screen.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class EmailLoginScreen extends StatefulWidget {
  static const String id = 'email_login_screen';
  @override
  _EmailLoginScreenState createState() => _EmailLoginScreenState();
}

class _EmailLoginScreenState extends State<EmailLoginScreen> {
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
          body: ModalProgressHUD(
            inAsyncCall: showSpinner ,
            child: Padding(
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
                      Center(
                        child: Text(
                          'HSS',
                          style: TextStyle(
                              fontSize: 90.0,
                              fontWeight: FontWeight.bold,
                              color: kBlueAppColor),
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
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(top:50.0),
                          child: RoundedButton(
                            color: kBlueAppColor,
                            title: 'Login',
                            onPress: () async{
                              setState(() {
                                showSpinner = true;
                              });
                              try{
                                final user = await _auth.signInWithEmailAndPassword(
                                    email: email.toString().trim(), password: password);
                                if(user != null){
                                  print(user);
                                  Navigator.pushNamed(context, AppHomeScreen.id);
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
      ),
    );
  }
}
