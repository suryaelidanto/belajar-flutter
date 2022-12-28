import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: Text("List View")),
          body: Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Column(children: [
                Text(
                  "Hello World! 😎✌",
                  style: TextStyle(fontSize: 30),
                ),
                Center(
                  child: Container(
                      width: 400,
                      height: 300,
                      color: Colors.blue,
                      child: Image.asset(
                        "img/test.jpg",
                        fit: BoxFit.cover,
                      )),
                )
              ])),
        ));
  }
}
