import 'package:flutter/material.dart';
import '../changeName.dart';
import '../drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController = TextEditingController();
  var myText = "";
  // var url = Uri.parse("https://jsonplaceholder.typicode.com/photos");
  var url = Uri.parse("https://the.leatherwallets.in/products");
  var data;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var resp = await http.get(url);
    data = jsonDecode(resp.body);
    // print(data);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AppBar')),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: data != null
              ? ListView.builder(
                  // ! for grid view
                  //  GridView.builder(
                  // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //     crossAxisCount: 2),
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ListTile(
                        leading: Text("Id: ${data[index]['_id']}"),
                        title: Center(child: Text(data[index]['description'])),
                        trailing: Text("Price: ${data[index]['retail']}"),
                        // ! failed to load image
                        // leading: Image.network(
                        //   data[index]['images'][0],
                        //   errorBuilder: (context, error, stackTrace) {
                        //     return Text('Failed to load image');
                        //   },
                        // )
                      ),
                    );
                  },
                )
              : Center(child: CircularProgressIndicator())),
      drawer: MyDrawer(),
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


// import 'package:flutter/material.dart';
// import '../changeName.dart';
// import '../drawer.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class HomePage extends StatefulWidget {
//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   TextEditingController _nameController = TextEditingController();
//   var myText = "";
//   var url = Uri.parse("https://jsonplaceholder.typicode.com/photos");
//   var data;

//   @override
//   void initState() {
//     super.initState();
//     getData();
//   }

//   getData() async {
//     var resp = await http.get(url);
//     data = jsonDecode(resp.body);
//     print(data);
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('AppBar')),
//       body: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: data != null
//               ? SingleChildScrollView(
//                   child: Card(
//                   // ! ChangeName
//                   child: ChangeNameCard(
//                       myText: myText, nameController: _nameController),
//                 ))
//               : Center(child: CircularProgressIndicator())),
//       drawer: MyDrawer(),
//       // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           myText = _nameController.text;
//           setState(() {});
//         },
//         child: Icon(Icons.edit),
//       ),
//     );
//   }
// }
