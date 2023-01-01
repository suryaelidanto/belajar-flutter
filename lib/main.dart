import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<Tab> myTab = [
      Tab(
        icon: Icon(Icons.home),
      ),
      Tab(
        icon: Icon(Icons.camera),
      ),
      Tab(
        icon: Icon(Icons.settings),
      ),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        initialIndex: 2,
        length: myTab.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tabbar Widget"),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.white,
                unselectedLabelStyle: TextStyle(),
                // indicatorColor: Colors.yellow,
                // indicatorWeight: 5,
                // indicatorPadding: EdgeInsets.all(10),
                indicator: BoxDecoration(
                  color: Colors.amber,
                  border:
                      Border(bottom: BorderSide(color: Colors.black, width: 5)),
                ),
                tabs: myTab,
              ),
            ),
          ),
          body: TabBarView(children: [
            Center(
              child: Text("Ini halaman pertama 😎"),
            ),
            Center(
              child: Text("Ini halaman kedua 😂"),
            ),
            Center(
              child: Text("Ini halaman ketiga 😁"),
            ),
          ]),
        ),
      ),
    );
  }
}
