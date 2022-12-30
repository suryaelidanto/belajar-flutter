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
          title: Text("Date Format"),
        ),
        body: Center(
          child: Container(
            child: Text(DateFormat.yMMMEd().add_Hms().format(DateTime.now()),
                style: TextStyle(fontSize: 20, fontFamily: "Poppins")),
          ),
        ),
      ),
    );
  }
}
