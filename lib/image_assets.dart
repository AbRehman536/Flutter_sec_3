import 'package:flutter/material.dart';

class AssetImageDemo extends StatelessWidget {
  const AssetImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Assets Image"),),
      body: Column(children: [
        Image.asset("assets/images/bike.jpg"),
      ],),
    );
  }
}
