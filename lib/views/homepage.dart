import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage ({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Text("Welcome....",style: TextStyle(fontSize: 50,color: Colors.blue),)),
    );
  }
}