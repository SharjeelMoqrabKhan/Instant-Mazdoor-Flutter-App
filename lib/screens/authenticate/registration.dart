import 'package:easehome/Animation/FadeAnimation.dart';
import 'package:easehome/shared/loading.dart';
import 'package:easehome/services/auth.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  final Function tooggleView;
  Register({this.tooggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  String error = '';
  bool loading=false;

  @override
  Widget build(BuildContext context) {
    return loading?Loading(): Scaffold(
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
                        "Register",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  FadeAnimation(
                      1.3,
                      Text(
                        "Welcome to EaseHome App",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
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
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 60,
                        ),
                        FadeAnimation(
                            1.4,
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(225, 95, 27, .3),
                                        blurRadius: 20,
                                        offset: Offset(0, 10))
                                  ]),
                              child: Column(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Colors.grey[200]))),
                                      child: Form(
                                        key: _formKey,
                                        child: Column(
                                          children: <Widget>[
                                            SizedBox(
                                              height: 20.0,
                                            ),
                                            TextFormField(
                                              validator: (val) => val.isEmpty
                                                  ? 'Enter an email'
                                                  : null,
                                              decoration: InputDecoration(
                                                hintText: "Email",
                                                hintStyle: TextStyle(
                                                    color: Colors.grey),
                                              ),
                                              onChanged: (val) {
                                                setState(() {
                                                  email = val;
                                                });
                                              },
                                            ),
                                            SizedBox(
                                              height: 20.0,
                                            ),
                                            TextFormField(
                                              validator: (val) => val.length < 6
                                                  ? 'Password should be long 6+ char '
                                                  : null,
                                              obscureText: true,
                                              decoration: InputDecoration(
                                                hintText: "Password",
                                                hintStyle: TextStyle(
                                                    color: Colors.grey),
                                              ),
                                              onChanged: (val) {
                                                setState(() {
                                                  password = val;
                                                });
                                              },
                                            ),
                                            SizedBox(height: 20),
                                            RaisedButton(
                                              color: Colors.orange[900],
                                              splashColor: Colors.white,
                                              child: Text("Register",
                                              style: TextStyle(
                                                color:Colors.white,
                                              ),
                                              ),
                                              onPressed: () async {
                                                if (_formKey.currentState
                                                    .validate()) {
                                                      setState(() {
                                                        loading=true;
                                                      });
                                                  dynamic result = await _auth
                                                      .registerWithEmailAndPassword(
                                                          email.trim(), password);
                                                  if (result == null) {
                                                    setState(() {
                                                      error =
                                                          "please provide valid email";
                                                      loading=false;
                                                    });
                                                  }
                                                }
                                              },
                                            ),
                                            SizedBox(height: 12.0),
                                            Text(
                                              error,
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontSize: 14.0),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )),
                            SizedBox(
                              height: 12.0,
                            ),
                            FadeAnimation(
                              1.5,
                              Text(
                              "Already hava an account?",
                              style: TextStyle(color: Colors.grey),
                            )
                            ),
                        SizedBox(
                          height: 12,
                        ),
                        FadeAnimation(
                            1.6,
                        FlatButton.icon(
                          icon: Icon(Icons.person),
                          label: Text("Sign In"),
                          onPressed: () {
                            widget.tooggleView();
                          },
                        ),   
                            ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
