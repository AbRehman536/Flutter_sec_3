import 'package:flutter/material.dart';

class ListTileView extends StatelessWidget {
  const ListTileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text("List Tile"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Card(
        color: Colors.greenAccent,
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, i){
            return Card(
              color: Colors.blue,
              child: ListTile(
                leading: Icon(Icons.person,color: Colors.white,),
                title: Text("List Tile",style: TextStyle(color: Colors.white),),
                subtitle: Text("List View Builder",style: TextStyle(color: Colors.white),),
                trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,),
              ),
            );
          }
        ),
      )
    );
  }
}
