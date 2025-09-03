import 'package:flutter/material.dart';

class StylingDesignDemo extends StatelessWidget {
  const StylingDesignDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Styling and Design"),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 400,
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 5, color: Colors.black),
            gradient: LinearGradient(colors: [Colors.blue, Colors.red]),
            boxShadow: [
              BoxShadow(
                color: Colors.green,
                blurRadius: 10,
                spreadRadius: 5,
                offset: Offset(15, 5)
              )
            ]
          ),
          child: Column(children: [
            //Text Style
            Text("Hello Flutter",style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.red,
              letterSpacing: 2,
              wordSpacing: 10,
              decoration: TextDecoration.underline,
              fontStyle: FontStyle.italic,

            ),),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 10,
                  )
                  , child: Text("Click Me")),
            ),

            ClipRRect(
                borderRadius : BorderRadius.circular(1000),
                child: Image.asset("assets/images/bike.jpg",height: 200,
                fit: BoxFit.contain
                  ,)),
          ],),
        ),
      ),
    );
  }
}
