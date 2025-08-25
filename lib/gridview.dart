import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
        centerTitle: true,
      ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
        mainAxisSpacing: 20,
       crossAxisSpacing: 30,
      ),
          itemCount: 13,
          itemBuilder: (context, i){
         return const FlutterLogo();
      }),
    );
  }
}
