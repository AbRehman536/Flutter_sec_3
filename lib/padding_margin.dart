import 'package:flutter/material.dart';

class PaddingMarginDemo extends StatelessWidget {
  const PaddingMarginDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Padding & Margin"),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 20,bottom: 10,left: 30,right: 40),
          child: Container(
            width: double.infinity,
            height: 200,
            color: Colors.red,
            child: Center(child: Text("First Container",style: TextStyle(fontSize: 50),)),),
        ),

        Container(
          //margin: EdgeInsets.all(10.0),
          width: double.infinity,
          height: 200,
          color: Colors.green,
          child: Center(child: Text("Second Container",style: TextStyle(fontSize: 50),)),),
      ],),
    );
  }
}
