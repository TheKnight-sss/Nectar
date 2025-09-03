import 'package:flutter/material.dart';
import 'package:necture_ui/features/home/homescreen.dart';
import 'package:necture_ui/features/main/main_app_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: MainAppScreen(),
    );
  }
}
