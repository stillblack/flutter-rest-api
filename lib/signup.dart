import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void Login(String email, String password) {
    try{
      Response response = await post(Uri.parse('url'),body:{'email':email , 'password':password});
      if(response.statusCode == 200){
        print('account created successfully');
      }else{
        print('failed');
      }
    }
    catch(e){
      print(e.toString());

    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Sign Up')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(hintText: 'email'),
            ),
            SizedBox(height: 15),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(hintText: 'password'),
            ),
            // SizedBox(height: 15),
            SizedBox(height: 25),
            TextButton(
              onPressed: () {
                Login(
                  emailController.text.toString(),
                  passwordController.text.toString(),
                );
              },
              style: TextButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Colors.green,
              ),
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
