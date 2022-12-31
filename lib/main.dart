import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          leading: Container(
            color: Colors.black,
          ),
          title: Container(
            width: 100,
            height: 10,
            color: Colors.amber,
          ),
          centerTitle: true,
          actions: [
            Container(
              width: 100,
              color: Colors.green,
            ),
          ],
          // flexibleSpace: Container(
          //   height: 1000,
          //   color: Colors.black,
          // )
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: Container(
              child: Text("hehehe"),
            ),
          ),
        ),
      ),
    );
  }
}
