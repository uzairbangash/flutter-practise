import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Change name App",
    home: homePage(),
    theme: ThemeData(
      primarySwatch: Colors.pink,
    ),
  ));
}

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  TextEditingController _nameController = TextEditingController();
  var myText = "Change my Name";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Change name app"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Card(
            child: Column(
              children: <Widget>[
                Image.asset(
                  "assets/IMG_9866.JPG",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  myText,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Name",
                      hintText: "Enter something here",
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("uzair bangash"),
            accountEmail: Text("uzairk80@gmail.com"),
            currentAccountPicture: CircleAvatar(
              radius: 50,
              child: Image.asset("assets/IMG_9866.JPG"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Account"),
            subtitle: Text("personal"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("personal"),
            trailing: Icon(Icons.send),
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.update),
      ),
    );
  }
}
