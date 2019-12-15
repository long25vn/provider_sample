import 'package:flutter/material.dart';


class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Text("Drawer Sample"),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text("Home page"),
            onTap: () {
               Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            title: Text("About Page"),
            onTap: () {
               Navigator.pushNamed(context, '/about');
            },
          ),
        ],
      ),
    );
  }
}