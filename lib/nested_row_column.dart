import 'package:flutter/material.dart';

class NestedRowColumn extends StatelessWidget {
  const NestedRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.arrow_back_ios_new,color: Colors.white,size: 25,),
        title: Text("POST",style: TextStyle(color: Colors.white,fontSize: 25),),
        centerTitle: true,
        actions: [
          Icon(Icons.notification_add,color: Colors.white,size: 25,),
          Icon(Icons.bookmark,color: Colors.white,size: 25,),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 15,),
          Text("Title",style: TextStyle(color: Colors.black,fontSize: 35),),
          SizedBox(height: 15,),
          Text("Page layouts look better with something in each section. Web page designers, content writers, and layout artists use lorem ipsum, also known as placeholder copy, to distinguish which areas on a page will hold advertisements, editorials, and filler before the final written content and website designs receive client approval."),
          SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Icon(Icons.favorite),
          Icon(Icons.comment),
          Icon(Icons.bookmark),
          Icon(Icons.add_task),
        ],),
          SizedBox(height: 15,),
          Icon(Icons.notification_add),
          Icon(Icons.person),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Icon(Icons.add_task),
            Icon(Icons.add_task),
            Icon(Icons.add_task),
          ],)
        ],
      ),

    );
  }
}
