import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petcare_app/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pet Care App',
      theme: ThemeData(
      ),
      home: const LoginScreen(),
    );
  }
}
