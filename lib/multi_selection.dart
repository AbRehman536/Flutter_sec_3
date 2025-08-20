import 'package:flutter/material.dart';

class MultipleSelectionDemo extends StatefulWidget {
  const MultipleSelectionDemo({super.key});

  @override
  State<MultipleSelectionDemo> createState() => _MultipleSelectionDemoState();
}

class _MultipleSelectionDemoState extends State<MultipleSelectionDemo> {
  List<int> selectedIndex = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Multiple Selection"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: 7,
        itemBuilder: (context, i){
          return ListTile(
            onTap: (){
              if(selectedIndex.contains(i)){
                selectedIndex.remove(i);
              }else{
                selectedIndex.add(i);
              }
              setState(() {});
            },
            tileColor: selectedIndex.contains(i) ? Colors.blue : Colors.white,
            textColor: selectedIndex.contains(i) ? Colors.white70 : Colors.black,
            iconColor: selectedIndex.contains(i) ? Colors.white70 : Colors.black,
            leading: Icon(Icons.settings),
            title: Text("Settings,$selectedIndex "),
            subtitle: Text("Index: $i"),
            trailing: Icon(selectedIndex.contains(i) ? Icons.arrow_downward_sharp : Icons.arrow_forward_ios_sharp),
          );
        }
      ),
    );
  }
}
