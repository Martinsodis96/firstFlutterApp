import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text("My first app"),
      backgroundColor: Colors.orange,
      centerTitle: true,
    ),
    body: Center(
      child: Text(
          "Hello World",
        style: TextStyle(
          fontSize: 30,
          color: Colors.grey[500]
        ),
      ),
    ),
    floatingActionButton: FloatingActionButton(onPressed: () {},
    backgroundColor: Colors.orange,
    child: Text("Click"),),
  ),
));