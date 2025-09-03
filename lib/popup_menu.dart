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
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: PopupMenuButton<int>(
              onSelected: (value){
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Selected item $value")));

              },
                itemBuilder: (BuildContext context){
                  return [
                    PopupMenuItem(
                        value: 1,
                        child: Text("Profile")),
                    PopupMenuItem(
                        value: 2,
                        child: Text("Settings")),
                    PopupMenuItem(
                        value:3,
                        child: Text("Logout")),
                  ];

                }),
          )
        ],
      ),
      body: Center(child:
        Text("Tap the 3 dots menu in AppBar"),),
    );
  }
}
