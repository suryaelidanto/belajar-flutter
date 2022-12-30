import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<Map<String, dynamic>> myList = [
    {
      "name": "Cintara Surya Elidanto",
      "age": "99",
      "genre": [
        "smart",
        "cool",
        "funny",
        "sip mantap",
        "okelah",
        "coba",
        "123123",
        "asdsad"
      ]
    },
    {
      "name": "Surya Elz",
      "age": "98",
      "genre": ["okelah", "amazing", "sip sip"]
    },
    {
      "name": "Okelah",
      "age": "76",
      "genre": ["mantap", "okesip", "nice"]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: Text("Mapping List")),
          body: ListView(
            padding: EdgeInsets.all(10),
            children: myList.map((data) {
              List genre = data["genre"];
              return ElevatedButton(
                onPressed: () {
                  log(data["name"]);
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black.withOpacity(0.8)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                            backgroundImage:
                                NetworkImage("https://picsum.photos/200/300")),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Name : ${data["name"]}",
                                style: TextStyle(
                                    fontSize: 20, fontFamily: "Poppins"),
                              ),
                              Text(
                                "Age : ${data["age"]}",
                                style: TextStyle(
                                    fontSize: 20, fontFamily: "Poppins"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                            children: genre.map((genreItem) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            color: Colors.blue,
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "${genreItem}",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          );
                        }).toList()),
                      ),
                    ),
                    Divider(),
                  ],
                ),
              );
            }).toList(),
          ),
        ));
  }
}
