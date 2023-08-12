 import 'package:firebace_othertification/class_page.dart';
import 'package:flutter/material.dart';

class Ragistor extends StatefulWidget {
  const Ragistor({Key? key}) : super(key: key);

  @override
  State<Ragistor> createState() => _RagistorState();
}

class _RagistorState extends State<Ragistor> {
  TextEditingController emailco=TextEditingController();
  TextEditingController passwordCo=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailco,
              decoration: InputDecoration(
                labelText: 'Email',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1,
                  ),borderRadius: BorderRadius.all(Radius.zero)),),

            ),
            SizedBox(height: 35,),
            TextField(
              controller: passwordCo,
              decoration: InputDecoration(
                labelText: 'Password',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1,
                  ),borderRadius: BorderRadius.all(Radius.zero)),),

            ),
            SizedBox(height: 25,),
            SizedBox(

              width: 170,
              child: ElevatedButton(
                child: Text("SignUp"),onPressed: (){
                AuthController.instance.register(emailco.text.trim(), passwordCo.text.trim());

              },style:
              ElevatedButton.styleFrom(primary: Colors.blue,shape:
              RoundedRectangleBorder(borderRadius:BorderRadius.circular( 10), )),
              ),
            ),
          ],


        ),
      ),
    );
  }
}
