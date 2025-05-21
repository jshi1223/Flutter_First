import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'dashboard.dart';
=======
import 'login.dart'; // 
>>>>>>> d01732995bacbc946d5d00f2714a72b656f038b3

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Agriculture App',
      debugShowCheckedModeBanner: false,
      home: DashboardPage(), // 👈 Default starting page
    );
  }
}
