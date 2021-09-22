import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(
        children: [
          //  HEADER OF DRAWER.
          new UserAccountsDrawerHeader(
            accountName: Text("Account Name"),
            accountEmail: Text("Email"),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, color: Colors.white),
              ),
            ),
            decoration: new BoxDecoration(color: Colors.red),
          ),
          //  BODY

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Home Page'),
              leading: Icon(Icons.home, color: Colors.red),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('My Account'),
              leading: Icon(Icons.person, color: Colors.red),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('My Orders'),
              leading: Icon(Icons.shopping_basket, color: Colors.red),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Categories'),
              leading: Icon(Icons.dashboard, color: Colors.red),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Favourites'),
              leading: Icon(Icons.favorite, color: Colors.red),
            ),
          ),

          Divider(),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('About'),
              leading: Icon(Icons.help, color: Colors.blue),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings, color: Colors.blueGrey),
            ),
          ),
        ],
      ),
    );
  }
}
