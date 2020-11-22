import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "welcome to my first app",
    home: homePage(),
  ));
}

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("welcome to my first app"),
      ),
      body: Container(
        color: Colors.blue,
        child: Center(child: Text("welcome to my first app")),
      ),
    );
  }
}
