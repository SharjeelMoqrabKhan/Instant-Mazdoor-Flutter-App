import 'package:easehome/models/user.dart';
import 'package:easehome/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'authenticate/authenticate.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    // return either home or authentication
    
    if(user == null){
      return Authenticate();
    }
    else{
      return HomeScreen();
    }
  }
}