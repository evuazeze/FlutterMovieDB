import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: Container(),
      appBar: AppBar(
        backgroundColor: Colors.white30,
        leading:  Icon(Icons.video_library, size: 40.0),
        title: Text('FMovieDB', style: TextStyle(fontSize: 20.0, color: Colors.white),),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              size: 30.0,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.person,
              size: 30.0,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
