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
          title: const Text(''),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
