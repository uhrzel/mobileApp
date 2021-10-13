import 'package:flutter/material.dart';
import 'dashboard.dart';

class Rate extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      title: 'Rate Section',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: RateHome(title: 'Ratings'),
    );
  }
}

class RateHome extends StatelessWidget {
  final String title;
  const RateHome({@required this.title});

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
          'Mga Score sang naga Sali',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        )));
  }
}
