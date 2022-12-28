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
          body: Center(
              child: Text(
            "Hello World! Hello World! Hello World!Hello World!Hello World!Hello World!Hello World!Hello World!Hello World!Hello World!Hello World!",
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(
                backgroundColor: Colors.black,
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 5,
                decoration: TextDecoration.lineThrough,
                decorationStyle: TextDecorationStyle.wavy,
                decorationColor: Colors.black,
                fontFamily: "Poppins"),
          )),
          appBar: AppBar(
            title: Text("My Apps"),
          )),
    );
  }
}
