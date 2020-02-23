import 'package:flutter/material.dart';

import './services/api.dart';



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  Future inTheatreMovies;

  @override
  void initState() {
    super.initState();
    var api = new Api();
    inTheatreMovies = api.inTheatres();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.black26,
      body: Container(
        child: Text('Movie List', style: TextStyle(color: Colors.white),),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white30,
        leading: InkWell(
          child: Icon(
            Icons.video_library,
            size: 40.0,
            color: Colors.white,
          ),
          onTap: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
        title: Text(
          'FMovieDB',
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
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
      drawer: Drawer(
        child: Container(
          color: Colors.black,
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Temitope Omotunde'),
                accountEmail: Text('topeomot@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  radius: 90.0,
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ),
              ),
              SizedBox(height: 10.0),
              ListTile(
                title: Text(
                  "Home",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 21.0,
                      fontWeight: FontWeight.w600),
                ),
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                onTap: () {},
              ),
              Divider(
                color: Colors.white,
              ),
              ListTile(
                title: Text(
                  "Movies",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 21.0,
                      fontWeight: FontWeight.w600),
                ),
                leading: Icon(
                  Icons.movie,
                  color: Colors.white,
                ),
                onTap: () {},
              ),
              Divider(
                color: Colors.white,
              ),
              ListTile(
                title: Text(
                  "TV Shows",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 21.0,
                      fontWeight: FontWeight.w600),
                ),
                leading: Icon(
                  Icons.tv,
                  color: Colors.white,
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
