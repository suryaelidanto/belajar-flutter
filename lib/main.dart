import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool status = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(title: Text("Fitur Text Field")),
          body: Center(
              child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              // autocorrect: true,
              // autofocus: true,
              // enableSuggestions: true,
              // enableInteractiveSelection: false,
              // enabled: true,
              // obscuringCharacter: "+",
              // textAlign: TextAlign.center,
              obscureText: status,
              textAlignVertical: TextAlignVertical.center,
              textCapitalization: TextCapitalization.words,
              showCursor: true,
              cursorColor: Colors.blue,
              cursorWidth: 10,
              cursorHeight: 10,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
              decoration: InputDecoration(
                  // icon: Container(
                  //   decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(100),
                  //       color: Colors.black),
                  //   child: Icon(
                  //     Icons.person,
                  //     color:,
                  //     size: 35,
                  //   ),
                  // ),
                  filled: true,
                  fillColor: Colors.amber,
                  icon: Icon(
                    Icons.person,
                    size: 30,
                  ),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          status = !status;
                        });
                      },
                      icon: Icon(
                          status ? Icons.visibility : Icons.visibility_off)),
                  // prefixText: "Name : ",
                  // prefixIcon: Icon(Icons.person_add),
                  hintText: "Password...",
                  // labelText: "Full Name  :",
                  labelStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  // focusedBorder: OutlineInputBorder(
                  //     borderSide: BorderSide(color: Colors.black)),
                  // enabledBorder: OutlineInputBorder(
                  //     borderSide: BorderSide(color: Colors.black)),
                  border: OutlineInputBorder()),
            ),
          ))),
    );
  }
}
