import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Counter Sederhana! 😎✌",
          ),
        ),
        body: Column(children: [
          Center(
            child: Container(
                margin: EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Text(
                      counter.toString(),
                      style: TextStyle(fontSize: 50 + counter.toDouble()),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 100),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  counter++;
                                });
                                log(counter.toString());
                              },
                              child: Icon(Icons.add)),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  counter--;
                                });
                                log(counter.toString());
                              },
                              child: Icon(Icons.remove))
                        ],
                      ),
                    ),
                  ],
                )),
          )
        ]),
      ),
    );
  }
}
