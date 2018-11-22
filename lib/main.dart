import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new MyHomePage(),
      routes: <String, WidgetBuilder>{
        '/home_screen': (BuildContext context) => new MyHomePage(),
        '/restaurant_screen': (BuildContext context) => new Restaurants(),
        '/nearby_screen': (BuildContext context) => new Nearby(),
        '/request_screen': (BuildContext context) => new Request(),
      },
    );
  }
}

class Restaurants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget bodyWidget = new Card(
      child: Column(
        children: <Widget>[
          new Text(
            'Restaurants',
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
    return new KainGradientAppBar()
        .getGradientAppBar('Hello', context, bodyWidget);
  }
}

class Nearby extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget bodyWidget = new Card(
      child: Column(
        children: <Widget>[
          new Text(
            'Nearby',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
    return new KainGradientAppBar()
        .getGradientAppBar('Hello', context, bodyWidget);
  }
}

class Request extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget bodyWidget = new Card(
      child: Column(
        children: <Widget>[
          new Text(
            'Request',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
    return new KainGradientAppBar()
        .getGradientAppBar('Hello', context, bodyWidget);
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget bodyWidget = new Card(
      child: Column(
        children: <Widget>[
          new Text(
            'This is my body Area, I will put anything that I like here',
            style: TextStyle(fontSize: 20),
          ),
          Image.network('https://avatarfiles.alphacoders.com/848/84855.jpg')
        ],
      ),
    );
    return new KainGradientAppBar()
        .getGradientAppBar('Hello', context, bodyWidget);
  }
}

class KainGradientAppBar {
  getGradientAppBar(String title, BuildContext context, Widget bodyWidget) {
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
                title: new Text('Home'),
                leading: Icon(Icons.home),
                onTap: () {
                  Navigator.of(context).pushNamed('/home_screen');
                },
              ),
              new ListTile(
                title: new Text('Restaurants'),
                leading: Icon(Icons.restaurant_menu),
                onTap: () {
                  Navigator.of(context).pushNamed('/restaurant_screen');
                },
              ),
              new ListTile(
                title: new Text('Nearby'),
                leading: Icon(Icons.near_me),
                onTap: () {
                  Navigator.of(context).pushNamed('/nearby_screen');
                },
              ),
              new ListTile(
                title: new Text('Request Restaurant'),
                leading: Icon(Icons.library_add),
                onTap: () {
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
              ),
            ],
          ),
        ),
        body: bodyWidget,
      ),
    );
  }
}
