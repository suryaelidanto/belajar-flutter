import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final List<Color> myColor = [
    //   Colors.blue,
    //   Colors.black,
    //   Colors.green,
    //   Colors.purple
    // ];

    List<Widget> myList = List.generate(
        100,
        (index) => Text(
              "${index + 1}",
              style: TextStyle(fontSize: 5 + double.parse(index.toString())),
            ));

    // List<Container> data = [
    //   Container(
    //     height: 200,
    //     width: 200,
    //     color: Colors.green,
    //   ),
    //   Container(
    //     height: 200,
    //     width: 200,
    //     color: Colors.blue,
    //   ),
    //   Container(
    //     height: 200,
    //     width: 200,
    //     color: Colors.amber,
    //   ),
    //   Container(
    //     height: 200,
    //     width: 200,
    //     color: Colors.red,
    //   )
    // ];
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(title: Text("List View")),
            body: ListView(
              children: myList,
            )));
  }
}
