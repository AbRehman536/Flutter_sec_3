import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sec_3/gridview.dart';
import 'package:flutter_sec_3/login_form.dart';
import 'package:flutter_sec_3/multi_selection.dart';

class CurvedBottombar extends StatefulWidget {
  const CurvedBottombar({super.key});

  @override
  State<CurvedBottombar> createState() => _CurvedBottombarState();
}

class _CurvedBottombarState extends State<CurvedBottombar> {

  int selectedIndex = 0;
  List<Widget> screenList = [LoginForm(), MultipleSelectionDemo(), GridViewDemo()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screenList.elementAt(selectedIndex),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueAccent.shade100,
        color: Colors.blue,
        buttonBackgroundColor: Colors.lightBlue,
        animationDuration: Duration(milliseconds: 300),
        items: const [
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.favorite, size: 30, color: Colors.white),
          Icon(Icons.person, size: 30, color: Colors.white),
        ],
        onTap: (index) => setState(() => selectedIndex = index),
      ),

    );
  }
}
