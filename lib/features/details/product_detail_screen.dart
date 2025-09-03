import 'package:flutter/material.dart';
import 'package:necture_ui/core/utils/appcolor.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: Appcolor.accentColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
