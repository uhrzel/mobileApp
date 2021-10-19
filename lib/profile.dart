import 'package:flutter/material.dart';
import 'dashboard.dart';

class Profile extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      debugShowCheckedModeBanner: false,
      title: 'Settings Section',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      // A widget which will be started on application startup
      home: ProfileHome(title: 'User Profile'),
    );
  }
}

class ProfileHome extends StatelessWidget {
  final String title;

  const ProfileHome({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Dashboard()));
              }),
          title: Text(title),
        ),
        body: Container(
            child: Text(
          'Diri makita ang overview sang user',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        )));
  }
}
