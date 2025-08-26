import 'package:flutter/material.dart';
import 'package:flutter_sec_3/gridview.dart';
import 'package:flutter_sec_3/login_form.dart';
import 'package:flutter_sec_3/multi_selection.dart';

class BottomBarView extends StatefulWidget {
  const BottomBarView({super.key});

  @override
  State<BottomBarView> createState() => _BottomBarViewState();
}

class _BottomBarViewState extends State<BottomBarView> {
  int selectedIndex = 0;
  List<Widget> screenList = [LoginForm(), MultipleSelectionDemo(), GridViewDemo()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.redAccent,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          selectedFontSize: 25,
          onTap: (val){
            selectedIndex = val;
            setState(() {});
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),


          ]),
    );
  }
}
