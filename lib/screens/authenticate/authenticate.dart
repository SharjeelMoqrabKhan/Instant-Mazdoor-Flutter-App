import 'package:easehome/screens/authenticate/registration.dart';
import 'package:easehome/screens/authenticate/sign_in.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn=true;
  void  tooggleView(){
    setState(() {
      showSignIn = !showSignIn;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(showSignIn){
      return SignIn(tooggleView:tooggleView);
    }
    else{
      return Register(tooggleView:tooggleView);
    }
  }
}