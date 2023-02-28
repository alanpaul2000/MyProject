import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'chats.dart';
import 'call.dart';
import 'status.dart';

void main(){
  runApp(MaterialApp(
    home: Tab_bar(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      colorScheme: ColorScheme.fromSwatch().copyWith(primary: Color(0xff2e7d32))
    ),
  ));
}

class Tab_bar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, child: Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp"),
        actions: [
          Icon(Icons.search_sharp),
          SizedBox(width: 10,),
          PopupMenuButton(itemBuilder: (context){
            return[
              PopupMenuItem(child: Text("New Group")),
              PopupMenuItem(child: Text("New Broadcast")),
              PopupMenuItem(child: Text("Linked devices")),
              PopupMenuItem(child: Text("Starred message")),
              PopupMenuItem(child: Text("Payments")),
              PopupMenuItem(child: Text("Settings"))
            ];
          })
        ],
        bottom: TabBar(
            labelPadding: EdgeInsets.zero,
            isScrollable: true,
            unselectedLabelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.green,
            tabs: [
          SizedBox(
            width: MediaQuery.of(context).size.width*.1,
            child: Tab(
              icon: Icon(Icons.camera_alt_rounded),
            ),
          ),
              SizedBox(
                width: MediaQuery.of(context).size.width*.3,
                child: Tab(
                  text: "chats",
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width*.3,
                child: Tab(
                  text: "Status",
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width*.3,
                child: Tab(
                  text: "Call",
                ),
              )
            ],
        ),
      ),
      body: TabBarView(
        children: [
          Center(
            child: Text("Camera"),
          ),
          Chats(),
        Status(),
          Call(),
        //  Status(),
          //Call(),
        ],
      ),
    ),
    );
  }
}