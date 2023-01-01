import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Fitur Text Field")),
        body: Center(
            child: TextField(
          autocorrect: true,
          autofocus: true,
          enableSuggestions: true,
          enableInteractiveSelection: false,
          enabled: true,
          obscureText: true,
          obscuringCharacter: "+",
          keyboardType: TextInputType.number,
        )),
      ),
    );
  }
}
