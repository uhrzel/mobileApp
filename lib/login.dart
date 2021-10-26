import 'package:flutter/material.dart';
import 'Signup.dart';
import 'dashboard.dart';
import 'fp.dart';

class Login extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      title: 'Login Screen',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: LoginHome(),
    );
  }
}

class LoginHome extends StatelessWidget {
  final String title = "Login Screen";
  var _username_controller = TextEditingController();
  var _password_controller = TextEditingController();
  String username = "";
  String password = "";
  final String static_username = "q";
  final String static_password = "q";

  startLogin(BuildContext context) {
    if (username == "") {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Username  Empty!!'), backgroundColor: Colors.black));
    } else if (password == "") {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Password  Empty!!'), backgroundColor: Colors.black));
    } else {
      if (username != static_username) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Invalid Credentials!!'), backgroundColor: Colors.black));
      } else if (password != static_password) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Invalid Credentials!!'), backgroundColor: Colors.black));
      } else {
        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Dashboard()));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Text(
            title,
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
            child: Card(
                child: Column(children: <Widget>[
          SizedBox(height: 30.0),
          Text(
            'Login to Dashboard',
          ),
          SizedBox(height: 20.0),
          CircleAvatar(radius: 60.0, backgroundImage: AssetImage('images/unnamed.png')),
          SizedBox(height: 15.0),
          Text(
            'Please Login to Continue',
          ),
          SizedBox(height: 20.0),
          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            margin: EdgeInsets.only(top: 10),
            child: TextField(
              controller: _username_controller,
              onChanged: (value) {
                username = value;
              },
              style: TextStyle(color: Colors.blueGrey[600], fontSize: 20),
              decoration: myInputDecoration(
                label: "Username",
                icon: Icons.account_circle_outlined,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            margin: EdgeInsets.only(top: 10),
            child: TextField(
              controller: _password_controller,
              onChanged: (value) {
                password = value;
              },
              style: TextStyle(color: Colors.blueGrey[600], fontSize: 20),
              obscureText: true,
              decoration: myInputDecoration(
                label: "Password",
                icon: Icons.lock,
              ),
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => ForgotPassword()));
            },
            child: Text(
              'Forgot Password?',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ),
          Container(
            child: SizedBox(
              height: 60,
              width: 340,
              child: RaisedButton(
                onPressed: () {
                  startLogin(context);
                },
                child: Text(
                  "LOGIN NOW",
                  style: TextStyle(fontSize: 20),
                ),
                // if showprogress == true then show progress indicator
                // else show "LOGIN NOW" text
                colorBrightness: Brightness.dark,
                color: Colors.blue[300],
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)
                    //button corner radius
                    ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.only(top: 5),
            child: SizedBox(
              height: 50,
              width: 340,
              child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => SignUp()));
                },
                child: Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 20),
                ),
                // if showprogress == true then show progress indicator
                // else show "LOGIN NOW" text
                colorBrightness: Brightness.dark,
                color: Colors.blue[300],
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)
                    //button corner radius
                    ),
              ),
            ),
          ),
        ]))));
  }

  InputDecoration myInputDecoration({@required String label, @required IconData icon}) {
    return InputDecoration(
      labelText: label,
      hintText: label, //show label as placeholder
      hintStyle: TextStyle(color: Colors.blue[100], fontSize: 20), //hint text style
      prefixIcon: Padding(
          padding: EdgeInsets.only(left: 20, right: 10),
          child: Icon(
            icon,
            color: Colors.blue[100],
          )
          //padding and icon for prefix
          ),

      contentPadding: EdgeInsets.fromLTRB(30, 20, 30, 20),
      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide(color: Colors.blue, width: 3)), //default border of input

      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide(color: Colors.blue, width: 3)), //focus border

      fillColor: Colors.white,
      filled: true, //set true if you want to show input background
    );
  }
}
