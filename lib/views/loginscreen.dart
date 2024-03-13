import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_task2/views/homepage.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> loginkey = GlobalKey<FormState>();
    TextEditingController usernamecontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();

    void login(String username, String password) {
      if (username == "swathi" && password == 123) {
        log("correct");
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Homepage()));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("incorrect username or password!"),
          backgroundColor: Colors.grey,
        ));
        log("invalid username or password");
      }
    }

    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: loginkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Login",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.blue),
              ),
              TextFormField(
                
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "required field!";
                  } else {
                    return null;
                  }
                },
                controller: usernamecontroller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "username",
                  hintText: " enter your user name",
                  hintStyle: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(height:10),
              TextFormField(
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "required field!";
                  } else {
                    return null;
                  }
                },
                controller: passwordcontroller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                    labelText: "password",
                    hintText: "enter your password",
                    prefixIcon: Icon(
                      Icons.key,
                      color: Colors.blue,
                    )),
              ),
              TextButton(
                onPressed: () {
                  if (loginkey.currentState!.validate()) {
                    login(usernamecontroller.text, passwordcontroller.text);
                  }
                },
                child: const Text(
                  "LOGIN",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              
            ],
          ),
        ),
      ),
    ));
  }
}
