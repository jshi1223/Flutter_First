import 'package:flutter/material.dart';
import 'login.dart'; // 


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Agriculture App',
      debugShowCheckedModeBanner: false,
      home: LoginPage(), // 👈 Default starting page
    );
  }
}
