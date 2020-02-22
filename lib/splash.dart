import 'dart:async';

import 'package:flutter/material.dart';

import 'home.dart';

class Splash extends StatelessWidget {
  final String title;

  const Splash({Key key, this.title}) : super(key: key);

  goHome(num period, BuildContext context) {
    Timer(Duration(seconds: period), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    goHome(5, context);
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(color: Colors.black54, fontSize: 24.0),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.video_library, size: 40.0),
            )
          ],
        ),
      ),
    );
  }
}
