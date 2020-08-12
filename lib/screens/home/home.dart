import 'package:easehome/Animation/FadeAnimation.dart';
import 'package:easehome/Animation/pageTransition.dart';
import 'package:easehome/screens/services/RAC/RAC.dart';
import 'package:easehome/screens/services/electrical/electrical.dart';
import 'package:easehome/screens/services/genretor/genretor.dart';
import 'package:easehome/screens/services/plumber/plumber.dart';
import 'package:easehome/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.orange[900],
          Colors.orange[800],
          Colors.orange[400]
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(
                      1,
                      Text(
                        "What would you like to find?",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  FadeAnimation(
                      1.3,
                      Text(
                        "Services",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                  FadeAnimation(
                      1.3,
                      FlatButton.icon(
                        onPressed: () async {
                          await _auth.signOut();
                        },
                        icon: Icon(
                          FontAwesomeIcons.signOutAlt,
                          color: Colors.white,
                        ),
                        label: Text(
                          "Log out",
                          style: TextStyle(color: Colors.white),
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: ListView(
                  children: <Widget>[
                    FadeAnimation(
                      2.1,
                      ListTile(
                        leading: Icon(FontAwesomeIcons.bolt),
                        title: Text('Electrical Services'),
                        onTap: () {
                           Navigator.push(context,ScaleRoute(
                             page: Electrician()
                           ));
                        },
                      ),
                    ),
                    FadeAnimation(
                      2.2,
                      ListTile(
                        leading: Icon(FontAwesomeIcons.plug),
                        title: Text('Genretor Maintance'),
                         onTap: () {
                           Navigator.push(context,ScaleRoute(
                             page: Genretor()
                           ));
                        },
                      ),
                    ),
                    FadeAnimation(
                      2.3,
                      ListTile(
                        leading: Icon(FontAwesomeIcons.fan),
                        title: Text('Refrigerator and AC'),
                        onTap: () {
                           Navigator.push(context,ScaleRoute(
                             page: RAC()
                           ));
                        },
                      ),
                    ),
                    FadeAnimation(
                      2.4,
                      ListTile(
                        leading: Icon(FontAwesomeIcons.tintSlash),
                        title: Text('Plumber'),
                         onTap: () {
                           Navigator.push(context,ScaleRoute(
                             page: Plumber()
                           ));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )  
          ],
        ),
      ),
    );
  }
}
