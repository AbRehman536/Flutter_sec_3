import 'package:flutter/material.dart';
import 'package:flutter_sec_3/login_form.dart';

class BottomSheetDemo extends StatefulWidget {
  const BottomSheetDemo({super.key});

  @override
  State<BottomSheetDemo> createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Bottom Sheet"),
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
            showModalBottomSheet(
                context: context,
                builder: (context){
                  return Container(
                    child: Column(children: [
                      ListTile(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginForm()));
                        },
                        leading: Icon(Icons.person),
                        title: Text("Profile"),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                      ListTile(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        leading: Icon(Icons.settings),
                        title: Text("Settings"),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                      ListTile(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        leading: Icon(Icons.chat),
                        title: Text("Chat"),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ],),
                  );
                });


          }, child: Text("Login")),

        ],),
      ),
    );
  }
}
