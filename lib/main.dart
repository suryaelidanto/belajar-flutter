import 'dart:developer';

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
          appBar: AppBar(title: Text("List View")),
          body: ListView.builder(
            itemCount: 10,
            itemBuilder: ((context, index) {
              return Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.all(10),
                    title: Text("Cintara Surya Elidanto"),
                    subtitle: Text(
                      "Hai kamu sudah pernah pergi kah untuk berjalan-jalan denganku wahai sobatku! hahaha aku keren banget!",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    leading: CircleAvatar(backgroundColor: Colors.amber),
                    trailing: Text("10:00 PM"),
                    onTap: () => log("Hello Bang"),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                ],
              );
            }),
          ),
        ));
  }
}
