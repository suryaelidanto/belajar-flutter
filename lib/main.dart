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
          appBar: AppBar(title: Text("Invisible Widget")),
          body: Stack(
            children: [
              Container(
                height: 400,
                width: 400,
                color: Colors.green,
              ),
              Container(
                height: 300,
                width: 300,
                color: Colors.blue,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.amber,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              )
            ],
          ),
        ));
  }
}
