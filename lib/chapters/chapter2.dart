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
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey, blurRadius: 5, offset: Offset(2.0, 5.0))
            ],
            // shape: BoxShape.circle,
            gradient: LinearGradient(colors: [
              Colors.red,
              Colors.blue,
            ]),
          ),
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8),
          height: 100,
          width: 100,
          child: Text(
            'i m a box',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
