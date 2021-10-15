import 'package:flutter/material.dart';
import 'Signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mini System',
// Application theme data, you can set the colors for the application as you want
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
// A widget which will be started on application startup
      home: MyHomePage(title: " "),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Center(
          child: Text(
            title,
            style: TextStyle(fontFamily: 'Arial', color: Colors.black),
          ),
        ),
      ),
      body: Center(
          child: Card(
        color: Colors.blue[900],
        child: Column(
          children: <Widget>[
            SizedBox(height: 30),
            Text('Welcome', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black54)),
            SizedBox(height: 10),
            Text('To', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black54)),
            CircleAvatar(radius: 70.0, backgroundImage: AssetImage('images/unnamed.png')),
            SizedBox(height: 20),
            Text('Mobile Quiz App', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black54)),
            SizedBox(height: 50),
            Container(
                padding: EdgeInsets.all(60),
                margin: EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: 60,
                  width: 250,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => SignUp()));
                    },
                    child: Text(
                      "TAP TO PLAY",
                      style: TextStyle(fontSize: 20),
                    ),
                    colorBrightness: Brightness.dark,
                    color: Colors.lightBlue,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                ))
          ],
        ),
      )),
    );
  }
}
