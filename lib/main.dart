import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  var faker = new Faker();

  @override
  Widget build(BuildContext context) {
    // var list = [
    //   ChatItem(
    //     imageUrl: "https://picsum.photos/200/300",
    //     name: faker.person.name(),
    //     message: faker.conference.name(),
    //     clock: faker.date.justTime(),
    //   ),
    // ];
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(title: Text("Dummy Chat")),
            body: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) => ChatItem(
                imageUrl: "https://picsum.photos/id/${index}/200/300",
                name: faker.person.name(),
                message: faker.conference.name(),
                clock: faker.date.justTime(),
              ),
            )));
  }
}

class ChatItem extends StatelessWidget {
  String imageUrl;
  String name;
  String message;
  String clock;

  ChatItem({
    this.imageUrl = "",
    this.name = "",
    this.message = "",
    this.clock = "",
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.all(10),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
          ),
          title: Text(name),
          subtitle: Text(message, maxLines: 1, overflow: TextOverflow.ellipsis),
          trailing: Text(clock),
        ),
        Divider(
          color: Colors.black,
          thickness: 2,
        )
      ],
    );
  }
}
