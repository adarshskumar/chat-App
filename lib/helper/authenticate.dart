import 'package:flutter/material.dart';
import 'package:chat_app/views/signin.dart';
import 'package:chat_app/views/signup.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showSignIn = true;
  void toggelView() {
    setState(() {
      showSignIn = !showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(showSignIn){
      return SignIn(toggelView);
    }else {
      return SignUp(toggelView);
    }
  }
}
