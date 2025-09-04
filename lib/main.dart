import 'package:flutter/material.dart';
import 'package:necture_ui/features/splash_screen/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white,appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,surfaceTintColor: Colors.transparent
      )),
      home: SplashScreen(),
    );
  }
}
