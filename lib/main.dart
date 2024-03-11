

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "login page",
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Login",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          const TextField(
            decoration: InputDecoration(
                labelText: "username", hintText: "enter your user name"),
          ),
          const TextField(
            decoration: InputDecoration(
                labelText: "password", hintText: "enter your password"),
          ),
          TextButton(
            onPressed: () {},
            child: const Text("LOGIN"),
          ),
          ElevatedButton(
            style: const ButtonStyle(
              foregroundColor: MaterialStatePropertyAll(Colors.pink),
              backgroundColor: MaterialStatePropertyAll(Colors.green),
            ),
            onPressed: () {},
            child: const Text("LOGIN"),
          ),
          OutlinedButton(
            onPressed: () {},
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(const Size(200, 57)),
              foregroundColor: const MaterialStatePropertyAll(Colors.blue),
            ),
            child: const Text("Login"),
          )
        ],
      ),
    ));
  }
}

