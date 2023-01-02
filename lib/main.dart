import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController myController = TextEditingController();
  String textValue = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Penggunaan Text Field"),
        ),
        body: Center(
          child: Column(
            children: [
              TextField(
                controller: myController,
                onChanged: ((value) {
                  setState(() {
                    textValue = value;
                  });
                }),
                onSubmitted: (value) {
                  log(value);
                },
                onEditingComplete: () {
                  log("ini contoh editting" + textValue);
                },
              ),
              Text("Hasil Inputan : "),
              Text(textValue)
            ],
          ),
        ),
      ),
    );
  }
}
