import 'package:e_commerce/ui/screens/email_auth_screen.dart';
import 'package:e_commerce/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CraftyBoyApp());
}

class CraftyBoyApp extends StatelessWidget {
  const CraftyBoyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:EmailAuthScreen()
    );
  }
}

