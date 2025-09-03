import 'package:flutter/material.dart';
import 'package:necture_ui/core/utils/appcolor.dart';
import 'package:necture_ui/features/cart/page/cart_screen.dart';
import 'package:necture_ui/features/home/homescreen.dart';

class MainAppScreen extends StatefulWidget {
  const MainAppScreen({super.key});

  @override
  State<MainAppScreen> createState() => _MainAppScreenState();
}

class _MainAppScreenState extends State<MainAppScreen> {
  List<Widget> screens = [
    HomeScreen(),
    CartScreen(),
    HomeScreen(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow:([
            BoxShadow(
              color: Colors.grey.withValues(alpha: .2),
              blurRadius: 10,
              offset: Offset(0, -3), // changes position of shadow
            ),
          ]),
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          selectedItemColor: Appcolor.primaryColor,
          unselectedItemColor: Appcolor.grayColor,
          
          items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ]),
      ),
    );
  }
}