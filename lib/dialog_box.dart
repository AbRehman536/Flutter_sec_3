import 'package:flutter/material.dart';

class DialogBoxDemo extends StatefulWidget {
  const DialogBoxDemo({super.key});

  @override
  State<DialogBoxDemo> createState() => _DialogBoxDemoState();
}

class _DialogBoxDemoState extends State<DialogBoxDemo> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.arrow_back_ios),
        title: Text("LOGIN"),
        centerTitle: true,
        actions: [
          Icon(Icons.notification_add),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 15,),
          Text("Welcome to Login Page",style: TextStyle(fontSize: 30),),
          SizedBox(height: 15,),
          TextField(
            controller: emailController,
            decoration: InputDecoration(
              label: Text("Email"),
              hintText: 'abdullah@gmail.com',
              prefixIcon: Icon(Icons.email),
              suffixIcon: Icon(Icons.person),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(width: 5),
              ),
            ),
          ),
          TextField(
            controller: passwordController,
            obscureText: true,
            decoration: InputDecoration(
              label: Text("Password"),
              hintText: 'pass must be more than 8 digits',
              prefixIcon: Icon(Icons.lock),
              suffixIcon: Icon(Icons.visibility),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(width: 5),
              ),
            ),
          ),
          SizedBox(height: 15,),
          ElevatedButton(onPressed: (){
            showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context){
                  return AlertDialog(
                    title: Text("Message"),
                    content: Text("Thank You for Login"),
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: Text("No")),
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: Text("Yes")),
                      Icon(Icons.email_outlined),
                      IconButton(onPressed: (){
                        Navigator.pop(context);
                      }, icon: Icon(Icons.person_pin_outlined)),
                    ],
                  );
                });
          }, child: Text("Login")),
        ],),
      ),
    );
  }
}
