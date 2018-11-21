import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

void main() => runApp(KainAppBar('Flutter Demo'));

class KainAppBar extends StatelessWidget {
  final String title;

  KainAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: new GradientAppBar(
          centerTitle: true,
          title: new Text('Kain',
              style: TextStyle(
                  fontFamily: 'Quiapo',
                  fontSize: 36.0,
                  fontWeight: FontWeight.w600)),
          backgroundColorStart: Colors.red[400],
          backgroundColorEnd: Colors.red[900],
        ),
        drawer: new Drawer(
          child: ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.red[800],
                ),
                accountName: new Text('Guest'),
                accountEmail: new Text('guestemail@email.com'),
                currentAccountPicture: new CircleAvatar(
                  backgroundImage: new NetworkImage(
                      'https://avatarfiles.alphacoders.com/848/84855.jpg'),
                ),
              ),
              new ListTile(
                title: new Text('Restaurants'),
                leading: Icon(Icons.restaurant_menu),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed('/restaurant_screen');
                },
              ),
              new ListTile(
                title: new Text('Nearby'),
                leading: Icon(Icons.near_me),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed('/nearby_screen');
                },
              ),
              new ListTile(
                title: new Text('Request Restaurant'),
                leading: Icon(Icons.library_add),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed('/request_screen');
                },
              ),
              new ListTile(
                title: new Text('Settings'),
                leading: Icon(Icons.settings),
                onTap: () {},
              ),
              new ListTile(
                title: new Text('About'),
                leading: Icon(Icons.info_outline),
                onTap: () {},
              ),
              new ListTile(
                title: new Text('Logout'),
                leading: Icon(Icons.power_settings_new),
                onTap: () {
                  print('Login code here');
                },
              ),
            ],
          ),
        ),
        body: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(50.0, 160.0, 50.0, 0.0),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[],
              ),
            )
          ],
        ),
      ),
    );
  }
}
