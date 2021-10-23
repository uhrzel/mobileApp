import 'package:flutter/material.dart';
import 'Animation.dart';
import 'listofquiz.dart';
import 'about_us.dart';
import 'rate.dart';
import 'profile.dart';

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
          style: TextStyle(fontSize: 20.0, color: Colors.black),
        ),
        backgroundColor: Colors.pink,
      ),
      drawer: Drawer(
          child: Card(
              color: Colors.blue[100],
              child: Column(
                children: <Widget>[
                  ListTile(
                    tileColor: Colors.pink,
                  ),
                  ListTile(
                    title: Text(
                      'Select Options',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                    tileColor: Colors.pink,
                  ),
                  Card(
                    child: ListTile(
                        leading: Icon(Icons.account_circle_outlined),
                        title: Text('Profile'),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Profile()));
                        },
                        tileColor: Colors.blue[100]),
                  ),
                  Card(
                    child: ListTile(
                        leading: Icon(Icons.star),
                        title: Text('Ratings'),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Rate()));
                        },
                        tileColor: Colors.blue[100]),
                  ),
                  Card(
                    child: ListTile(
                        leading: Icon(Icons.wb_incandescent),
                        title: Text('QUIZ NOW!'),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => List()));
                        },
                        tileColor: Colors.blue[100]),
                  ),
                  Card(
                    child: ListTile(
                        leading: Icon(Icons.home),
                        title: Text('HOME'),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Dashboard()));
                        },
                        tileColor: Colors.blue[100]),
                  ),
                  Card(
                    child: ListTile(
                        leading: Icon(Icons.supervisor_account),
                        title: Text('ABOUT US'),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => About()));
                        },
                        tileColor: Colors.blue[100]),
                  ),
                  Card(
                    child: ListTile(
                        leading: Icon(Icons.supervisor_account),
                        title: Text('Log Out'),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => MyApp()));
                        },
                        tileColor: Colors.blue[100]),
                  ),
                ],
              ))),
      body: Container(
          color: Colors.blue[100],
          child: Center(
              child: SingleChildScrollView(
                  child: Column(children: <Widget>[
            SizedBox(height: 20.0),
            Text('Listahan ng di magkakajowa: ', style: TextStyle(fontSize: 40.0, color: Colors.black38)),
            SizedBox(height: 10.0),
            Card(
              child: ListTile(
                title: Text('Masa, John Phillip D.'),
                subtitle: Text('jpmasagwapo@gmail.com'),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Zolina, Arzel John'),
                subtitle: Text('gwapodawsia@gmail.com'),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Montano Marjorie'),
                subtitle: Text('margomontano@gmail.com'),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Dela Cruz, Juan'),
                subtitle: Text('Patya nalang ko UWuu!!'),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Akin Ka Lang'),
                subtitle: Text('Patya nalang ko UWuu!!'),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Dela Cruz Juana'),
                subtitle: Text('Patya nalang ko UWuu!!'),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Dela Cruz Hakdog'),
                subtitle: Text('Patya nalang ko UWuu!!'),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Dela Cruz Hakdog'),
                subtitle: Text('Patya nalang ko UWuu!!'),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Dela Cruz Hakdog'),
                subtitle: Text('Patya nalang ko UWuu!!'),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Dela Cruz Hakdog'),
                subtitle: Text('Patya nalang ko UWuu!!'),
                onTap: () {},
              ),
            ),
          ])))),
    );
  }
}
