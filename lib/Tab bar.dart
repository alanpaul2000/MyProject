import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'List with Builder.dart';
import 'ListPage.dart';

class MyTab extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return DefaultTabController(
        length: 4, child: Scaffold(
      appBar: AppBar(
        title: Text("My Tab Bar"),
        actions: const [
          Icon(Icons.search)
        ],
        bottom: TabBar(
          labelPadding: EdgeInsets.zero,
          isScrollable: true,

          tabs: [
            SizedBox(width: ,)
            Tab(icon: Icon(Icons.people),),
            Tab(text: "Chats"),
            Tab(text: "Status"),
            Tab(text: "Call")

          ]),
      ),
      body: TabBarView(
        children: [
          const Center(child: Text("Community"),),
          const Center(child: Text("Chats"),),
          List_with_Builder(),
    ListPage(),
        ],
      ),
    ));
  }
}