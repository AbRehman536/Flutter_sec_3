import 'package:flutter/material.dart';

class TabBArDemo extends StatefulWidget {
  const TabBArDemo({super.key});

  @override
  State<TabBArDemo> createState() => _TabBArDemoState();
}

class _TabBArDemoState extends State<TabBArDemo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          leading: Icon(Icons.arrow_back_ios),
          title: Text("Tab Bar"),
          bottom: TabBar(
            isScrollable: true,
              indicatorColor: Colors.black,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.redAccent,
              tabs: [
            Tab(icon: Icon(Icons.home), text: 'Home',),
            Tab(icon: Icon(Icons.person), text: 'Profile',),
            Tab(icon: Icon(Icons.settings), text: 'Settings',),
            Tab(icon: Icon(Icons.home), text: 'Home',),
            Tab(icon: Icon(Icons.person), text: 'Profile',),
            Tab(icon: Icon(Icons.settings), text: 'Settings',),
          ]),
          actions: [
            Icon(Icons.notification_add),
            Icon(Icons.call),
          ],
        ),
        body: TabBarView(children: [
          Center(child: Text("Home"),),
          Center(child: Text("Profile"),),
          Center(child: Text("Settings"),),
          Center(child: Text("Home"),),
          Center(child: Text("Profile"),),
          Center(child: Text("Settings"),),
        ]),
      ),
    );
  }
}
