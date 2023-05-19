import 'package:flutter/material.dart';
import 'package:newapp/chapters/chapter1.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNameController = TextEditingController();
  final userPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login Page'),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset("assets/abc.jpg",
                fit: BoxFit.cover,
                color: Colors.black.withOpacity(0.7),
                colorBlendMode: BlendMode.darken),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: SingleChildScrollView(
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Form(
                            child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                decoration: InputDecoration(
                                    hintText: ('Enter Your Username'),
                                    labelText: 'Username'),
                              ),
                              SizedBox(height: 20),
                              TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintText: ('Enter Your Password'),
                                    labelText: 'Password'),
                              ),
                              SizedBox(height: 20),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (contect) => HomePage()));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text('Sign In'),
                                  ),
                                  // color: Colors.purple,
                                  // textcolor: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ))
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
