import 'package:flutter/material.dart';
import 'quiz.dart';
import 'main.dart';

class SignUp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      title: 'Sign Up',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      // A widget which will be started on application startup
      home: SignUpHome(
        title: 'Sign Up',
      ),
    );
  }
}

class SignUpHome extends StatelessWidget {
  final String title;
  const SignUpHome({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => MyApp()));
            }),
        title: Text(
          title,
        ),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Card(
          color: Colors.blue[900],
          child: Column(
            children: <Widget>[
              SizedBox(height: 30.0),
              Text('Sign Up to Continue:', style: TextStyle(fontFamily: 'Cardo', fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black54)),
              SizedBox(height: 20.0),
              Container(
                padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                child: TextFormField(
                    cursorColor: Colors.lightGreen,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: 'Username',
                      hintText: 'Enter username',
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.lightGreen)),
                      border: OutlineInputBorder(borderSide: BorderSide()),
                    )),
              ),
              Container(
                  child: Row(children: <Widget>[
                Container(
                  width: 170,
                  padding: EdgeInsets.fromLTRB(15, 10, 2, 0),
                  child: TextFormField(
                      cursorColor: Colors.lightGreen,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: 'Firstname',
                        hintText: 'Enter Firstname',
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.lightGreen)),
                        border: OutlineInputBorder(borderSide: BorderSide()),
                      )),
                ),
                Container(
                  width: 170,
                  padding: EdgeInsets.fromLTRB(2, 10, 3, 0),
                  child: TextFormField(
                      cursorColor: Colors.lightGreen,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: 'Lastname',
                        hintText: 'Enter Lastname',
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.lightGreen)),
                        border: OutlineInputBorder(borderSide: BorderSide()),
                      )),
                ),
              ])),
              Container(
                padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                child: TextFormField(
                    cursorColor: Colors.lightGreen,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'Enter Email',
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.lightGreen)),
                      border: OutlineInputBorder(borderSide: BorderSide()),
                    )),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                child: TextFormField(
                    cursorColor: Colors.lightGreen,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      hintText: 'Enter Phone Number',
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.lightGreen)),
                      border: OutlineInputBorder(borderSide: BorderSide()),
                    )),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 60,
                  width: 250,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Home()));
                    },
                    child: Text(
                      "PLAY NOW",
                      style: TextStyle(fontSize: 20),
                    ),
                    colorBrightness: Brightness.dark,
                    color: Colors.blue[300],
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)
                        //button corner radius
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  InputDecoration myInputDecoration({@required String label}) {
    return InputDecoration(
      hintText: label,
      hintStyle: TextStyle(color: Colors.black54, fontSize: 20),

      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black54, width: 2)), //default border of input

      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black54, width: 2)), //focus border

      fillColor: Colors.white,
      filled: true,
    );
  }
}
