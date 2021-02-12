import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:neighbourhood_watch/ui/views/alerts.dart';
import 'package:neighbourhood_watch/ui/views/emergency.dart';
import 'package:neighbourhood_watch/ui/views/nhg_create.dart';
import 'package:neighbourhood_watch/ui/views/property.dart';
import 'package:neighbourhood_watch/ui/views/vehicle.dart';
import 'nhg.dart';

class DrawerItems {
  String title;
  IconData icon;
  DrawerItems(this.title, this.icon);
}

class HomePage extends StatefulWidget {
  final drawerItems = [
    DrawerItems("NHG", Icons.people),
    DrawerItems("Create new NHG", Icons.group_add),
    DrawerItems("Vehicle", Icons.car_rental),
    DrawerItems("Property", Icons.home),
    DrawerItems("Alerts", Icons.notifications),
    DrawerItems("Emergency", Icons.info_outline),
  ];
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _selectedDrawerIndex = 0;

  _getDrawerItems(int items) {
    switch (items) {
      case 0:
        return NHG();
      case 1:
        return NHGCreate();
      case 2:
        return Vehicle();
      case 3:
        return Property();
      case 4:
        return Alerts();
      case 5:
        return Emergency();
      default:
        return print('Error');
    }
  }

  _onSelectItem(int index) {
    setState(() {
      _selectedDrawerIndex = index;
    });
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> drawerOptions = [];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(
        ListTile(
          title: Text(
            d.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: Icon(d.icon, color: Colors.black,),
          selected: i == _selectedDrawerIndex,
          onTap: () {
            _onSelectItem(i);
          },
        ),
      );
    }
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            SizedBox(
              height: 50.0,
            ),
            Column(children: drawerOptions),
          ],
        ),
      ),
      body: SafeArea(
        child: _getDrawerItems(_selectedDrawerIndex),
      ),
    );
  }
}
