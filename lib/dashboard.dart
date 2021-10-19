import 'package:flutter/material.dart';
import 'main.dart';
import 'quiz.dart';
import 'about_us.dart';
import 'settings.dart';
import 'rate.dart';
import 'profile.dart';

import 'EditQuiz.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, theme: ThemeData(primarySwatch: Colors.pink), home: DashboardHome());
  }
}

class DashboardHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dashboard',
          style: TextStyle(fontSize: 20.0, fontFamily: 'Mostery', color: Colors.black),
        ),
        backgroundColor: Colors.pink,
      ),
      drawer: Drawer(
          child: Card(
              child: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              'Select Options',
              style: TextStyle(color: Colors.black, fontFamily: 'Juicer', fontSize: 30),
            ),
            tileColor: Colors.pink,
          ),
          Divider(
            color: Colors.black,
            height: 1.0,
          ),
          ListTile(
              leading: const Icon(
                Icons.flaky,
                color: Colors.pink,
              ),
              //color: Colors.blue[900],
              title: Text(
                'QUIZ NOW!',
                style: TextStyle(fontSize: 20, fontFamily: 'fantasy'),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Home()));
              },
              tileColor: Colors.blue[900]),
          Divider(
            color: Colors.black,
            height: 1.0,
          ),
          ListTile(
              leading: const Icon(
                Icons.note_alt,
                color: Colors.pink,
              ),
              title: Text(
                'EDIT QUIZ',
                style: TextStyle(fontSize: 20, fontFamily: 'fantasy'),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => EditQuiz()));
              },
              tileColor: Colors.blue[900]),
          Divider(
            color: Colors.black,
            height: 1.0,
          ),
          ListTile(
              leading: const Icon(
                Icons.other_houses_rounded,
                color: Colors.pink,
              ),
              title: Text(
                'HOME',
                style: TextStyle(fontSize: 20, fontFamily: 'fantasy'),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Dashboard()));
              },
              tileColor: Colors.blue[900]),
          Divider(
            color: Colors.black,
            height: 0.5,
          ),
          ListTile(
              leading: const Icon(
                Icons.article,
                color: Colors.pink,
              ),
              title: Text(
                'ABOUT US',
                style: TextStyle(fontSize: 20, fontFamily: 'fantasy'),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => About()));
              },
              tileColor: Colors.blue[900]),
          Divider(
            color: Colors.black,
            height: 0.5,
          ),
          ListTile(
              leading: const Icon(
                Icons.disabled_by_default_rounded,
                color: Colors.pink,
              ),
              title: Text(
                'QUIT',
                style: TextStyle(fontSize: 20, fontFamily: 'fantasy'),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => MyApp()));
              },
              tileColor: Colors.blue[900]),
          Divider(
            color: Colors.black,
            height: 0.5,
          ),
        ],
      ))),
      body: Container(
          color: Colors.blue[900],
          child: Center(
              child: Column(children: <Widget>[
            SizedBox(height: 70.0),
            Text('Listahan ta sang nakasali', style: TextStyle(fontSize: 40.0, color: Colors.black)),
            SizedBox(height: 20.0),
          ]))),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue[900],
        items: [
          BottomNavigationBarItem(
              icon: InkWell(
                  child: Icon(
                    Icons.settings_applications_outlined,
                    color: Colors.black,
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Set()));
                  }),
              backgroundColor: Colors.red,
              label: "Settings"),
          BottomNavigationBarItem(
              icon: InkWell(
                  child: Icon(
                    Icons.grade,
                    color: Colors.yellow,
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Rate()));
                  }),
              backgroundColor: Colors.yellow,
              label: 'Ratings'),
          BottomNavigationBarItem(
              icon: InkWell(
                  child: Icon(
                    Icons.admin_panel_settings_outlined,
                    color: Colors.red,
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Profile()));
                  }),
              backgroundColor: Colors.pink,
              label: 'Profile'),
        ],
        selectedItemColor: Colors.black54,
      ),
    );
  }
}
