
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: List_with_Builder(),));
}

class List_with_Builder extends StatelessWidget {

  var name = ['name1', 'name2', 'name3', 'name4', 'name5'];
  var phone = ['909789687', '09789696', '097987986', '89685875', '968757644'];
  var image = [
    "assets/icons/tiger.png",
    "assets/icons/contact.png",
    "assets/icons/baby dog.png",
    "assets/icons/tiger.png",
    "assets/icons/shell.png"
  ];
  var colors = [800, 600, 400, 200, 100];

  @override
  Widget build(BuildContext context) {
    var images;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact book"),),
      body: ListView.separated(
          itemBuilder: (BuildContext context, index) {
            return Card(
              color: Colors.purple[colors[index]],
              child: Image.asset(image[index]),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              thickness: 6,
              color: Colors.yellow[colors[index]],);
          },
          itemCount: images.length),
    );
  }
}