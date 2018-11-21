import 'package:filter_chip/main.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class RestaurantScreen extends StatefulWidget {
  @override
  RestaurantScreenState createState() => RestaurantScreenState();
}

class RestaurantScreenState extends State<RestaurantScreen> {
  TabController tController;
  @override
  void initState() {
    super.initState();
    tController = TabController();
  }

  @override
  void dispose() {
    tController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        GradientAppBar(
          title: KainAppBar("Kain"),
          bottom: new TabBar(
            labelColor: Colors.white,
            controller: tController,
            tabs: <Widget>[
              new Tab(text: 'List'),
              new Tab(text: 'Cuisine'),
              new Tab(text: 'Favorites'),
            ],
          ),
        ),
        TabBarView(
          controller: tController,
          children: <Widget>[
            new Text('new firstpage.RestaurantList()'),
            new Text('new secondpage.CuisineList()'),
            new Text('new thirdpage.RestaurantFavorites()'),
          ],
        ),
      ],
    );
  }
}
