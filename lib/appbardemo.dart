import 'package:flutter/material.dart';

class Appbardemo extends StatelessWidget {
  const Appbardemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new,color: Colors.white,size: 30,),
        title: Text("App Bar Demo",style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 30,
          color: Colors.white,
        ),),
        actions: [
          Icon(Icons.notification_add,color: Colors.white,size: 30,),
          Icon(Icons.bookmark,color: Colors.white,size: 30,),

        ],
      ),
    );
  }
}
