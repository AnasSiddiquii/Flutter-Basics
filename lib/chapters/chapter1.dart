import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:newapp/pages/homePage.dart';

// ! Navbar
void main() {
  runApp(MaterialApp(
    title: 'Flutter App',
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.purple),
  ));
}

// ! body
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AppBar')),
      body: Container(
        child: Center(child: Text('Hello World')),
      ),
    );
  }
}
