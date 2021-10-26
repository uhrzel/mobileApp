import 'package:flutter/material.dart';
import 'login.dart';

void main() => runApp(myforgotPassScreen());

class myforgotPassScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => LoginHome()));
              }),
          title: const Text(''),
        ),
        body: const Center(
          child: Text(''),
        ),
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
              Text('Search Your Account', style: TextStyle(fontFamily: 'Times New Roman', fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black54)),
              SizedBox(height: 20.0),
              Container(
                padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                child: TextFormField(
                    cursorColor: Colors.lightGreen,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: 'Username',
                      hintText: 'Enter username',
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.lightGreen)),
                      border: OutlineInputBorder(borderSide: BorderSide()),
                    )),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 10, left: 220),
                child: SizedBox(
                  height: 30,
                  width: 120,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Login()));
                    },
                    child: Text(
                      "Register!",
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
