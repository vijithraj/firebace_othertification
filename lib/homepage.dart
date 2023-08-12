 import 'package:firebace_othertification/class_page.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  String? email;


  Home({required this.email});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
       Align(alignment: Alignment.center,
         child: TextButton(onPressed: (){
           AuthController.instance.logOut();
         }, child: Text("Logout",
         style: TextStyle(fontSize: 30,color: Colors.cyan),)),
       )
        ],
      ),
    );
  }
}
