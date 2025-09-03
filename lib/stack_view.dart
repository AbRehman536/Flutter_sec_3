import 'package:flutter/material.dart';

class StackViewScreen extends StatelessWidget {
  const StackViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Stack View"),
      ),
      body: Stack(
        children: [
          Image.asset("assets/images/bike.jpg",width: 300, height: 300,),
          Text("This is My Last Ride",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w800,color: Colors.red),),
          ElevatedButton(onPressed: (){}, child: Text("Button")),
        ],
      ),
    );
  }
}
