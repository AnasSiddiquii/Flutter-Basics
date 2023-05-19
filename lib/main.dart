import 'package:flutter/material.dart';
import 'package:newapp/pages/homePage.dart';
import 'package:newapp/pages/loginpage.dart';

// ! Navbar
void main() {
  runApp(MaterialApp(
    title: 'Flutter App',
    home: LoginPage(),
    // home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.purple),
    routes: {
      "/login": (context) => LoginPage(),
      "/home": (context) => HomePage()
    },
  ));
}
