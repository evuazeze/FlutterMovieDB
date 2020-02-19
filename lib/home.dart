import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String title;

  const Home({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext  context) {
    return Container(
      color: Colors.white,
      child: Center(child:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(title, style: TextStyle(color: Colors.black54, fontSize: 24.0),),
          Icon(Icons.video_library)
        ],
      ),),
    );
  }
}
