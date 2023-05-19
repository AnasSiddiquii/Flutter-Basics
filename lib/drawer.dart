import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // ! normal header
          // DrawerHeader(
          //     child: Text(
          //       'Hi I am Drawer',
          //       style: TextStyle(color: Colors.white),
          //     ),
          //     decoration: BoxDecoration(color: Colors.purple)),
          UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://avatars.githubusercontent.com/u/111655633?v=4"),
              ),
              accountName: Text('Anas Siddiqui'),
              accountEmail: Text('anas.siddiqui@afucent.com')),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Account'),
            subtitle: Text('Anas Siddiqui'),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('anas.siddiqui@afucent.com'),
            trailing: Icon(Icons.send),
          )
        ],
      ),
    );
  }
}
