import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),centerTitle: true,
      ),
      body: Center(
        child: Text("Your cart is empty",style: TextStyle(fontSize: 20,color: Colors.grey[600]),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: Icon(Icons.add_shopping_cart),
      ),
    );
  }
}