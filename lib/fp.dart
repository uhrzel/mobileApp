import 'package:flutter/material.dart';
import 'login.dart';

void main() => runApp(myforgotPassScreen());

class myforgotPassScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          eading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Login()));
              }),
          title: const Text(''),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
