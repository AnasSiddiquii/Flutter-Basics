import 'package:flutter/material.dart';

class ChangeNameCard extends StatelessWidget {
  const ChangeNameCard({
    super.key,
    required this.myText,
    required TextEditingController nameController,
  }) : _nameController = nameController;

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Image.asset("assets/abc.jpg", fit: BoxFit.cover),
      SizedBox(height: 20),
      Text(myText, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
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
              border: OutlineInputBorder(), labelText: 'Enter Your Name'),
        ),
      ),
    ]);
  }
}
