import 'package:flutter/material.dart';

class PopupMenuDemo extends StatelessWidget {
  const PopupMenuDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Pop Up Menu"),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("You selected : $value")));
            },
              itemBuilder: (BuildContext context){
                return [
                  const PopupMenuItem(
                    value: "Profile",
                      child: Text("Profile")),
                  const PopupMenuItem(
                    value: "Settings",
                      child: Text("Settings")),
                  const PopupMenuItem(
                    value: "Logout",
                      child: Text("Logout")),
                ];
              })
        ],
      ),
      body: Center(child:
        Text("Tap the 3 dots menu in AppBar"),),
    );
  }
}
