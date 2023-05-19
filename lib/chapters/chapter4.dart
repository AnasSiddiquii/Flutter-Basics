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
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController = TextEditingController();
  String myText = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AppBar')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Card(
            child: Column(children: <Widget>[
              Image.asset("assets/abc.jpg", fit: BoxFit.cover),
              SizedBox(height: 20),
              Text(myText,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.all(30),
                // ! no border input
                // child: TextField(
                //   decoration: InputDecoration(
                //       hintText: ('Enter Your Name'), labelText: 'Name'),
                // ),
                child: TextField(
                  controller: _nameController,
                  keyboardType: TextInputType.text,
                  // ! password
                  // obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Your Name'),
                ),
              ),
            ]),
          ),
        ),
      ),
      drawer: Drawer(
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
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.edit),
      ),
    );
  }
}
