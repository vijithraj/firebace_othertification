import 'package:firebace_othertification/registration_page.dart';
import 'package:flutter/material.dart';

import 'class_page.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailco = TextEditingController();
  TextEditingController passwordCo = TextEditingController();
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

                    borderSide: BorderSide(
                      width: 1,
                    ),
                    borderRadius: BorderRadius.all(Radius.zero)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: passwordCo,
              decoration: InputDecoration(
                labelText: 'Password',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                    ),
                    borderRadius: BorderRadius.all(Radius.zero)),
              ),
            ),
            SizedBox(height: 30,),
            SizedBox(
              height: 40,
              width: 170,
              child: ElevatedButton(
                child: Text("SignIn"),
                onPressed: () {
                  AuthController.instance
                      .login(emailco.text.trim(), passwordCo.text.trim());
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 15),
                ),
                onPressed: (){
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Ragistor()));

                },
                child: const Text("Dont have Account?SignUP"))

          ],
        ),
      ),
    );
  }
}
