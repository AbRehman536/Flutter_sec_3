import 'package:flutter/material.dart';

class RowColumnDemo extends StatelessWidget {
  const RowColumnDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.arrow_back_ios_new,color: Colors.white,size: 30,),
        title: Text("Row Column",style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 30,
          color: Colors.white,
        ),),
        actions: [
          Icon(Icons.notification_add,color: Colors.white,size: 30,),
          Icon(Icons.bookmark,color: Colors.white,size: 30,),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: (){},child: Icon(Icons.add,color: Colors.white,),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.account_balance),
          Text("Abdullah"),
          Text("Class"),
          Icon(Icons.comment),
          Icon(Icons.account_balance),
          Text("Abdullah"),
          Text("Class"),
          Icon(Icons.comment),
          Icon(Icons.account_balance),
          Text("Abdullah"),
          Text("Class"),
          Icon(Icons.comment),
        ],),
    );
  }
}
