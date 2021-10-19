import 'package:flutter/material.dart';
import 'dashboard.dart';

class About extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      title: 'About Us Section',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      // A widget which will be started on application startup
      home: AboutHome(title: 'About Us'),
    );
  }
}

class AboutHome extends StatelessWidget {
  final String title;

  const AboutHome({@required this.title});

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
          'About us diri Ibutang',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        )));
  }
}
