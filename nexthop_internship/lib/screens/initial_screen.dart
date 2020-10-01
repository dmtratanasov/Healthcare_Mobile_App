import 'package:flutter/material.dart';
import 'package:nexthop_internship/screens/app_home_screen.dart';

class InitialScreen extends StatelessWidget {
  static const String id = 'initial_screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/homeScreen_background.jpg"), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton(
                child: Text('Go to home screen'),
                onPressed: (){
                  Navigator.pushNamed(context, AppHomeScreen.id);
                },
              ),
              FlatButton(
                child: Text('Go to home screen'),
              ),
              FlatButton(
                child: Text('Go to my profile screen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
