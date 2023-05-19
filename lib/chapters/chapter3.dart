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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Container(
              color: Colors.black,
              width: 200,
              height: 400,
              // ! full height width
              // width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height,
              child: Column(
                  // child: Row
                  // ! horizontal alignment
                  mainAxisAlignment: MainAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // ! vertical alignment
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                        padding: const EdgeInsets.all(8),
                        height: 100,
                        width: 100,
                        color: Colors.red),
                    Container(
                        padding: const EdgeInsets.all(8),
                        height: 100,
                        width: 100,
                        color: Colors.green),
                    Container(
                        padding: const EdgeInsets.all(8),
                        height: 100,
                        width: 100,
                        color: Colors.blue),
                  ]),
            ),
          ),
        ));
  }
}
