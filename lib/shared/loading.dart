import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange[800],
      child: Center(
        child: SpinKitChasingDots(
          color:Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}