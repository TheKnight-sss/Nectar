import 'package:flutter/material.dart';
import 'package:necture_ui/core/utils/appcolor.dart';

class MainButton extends StatelessWidget {
  const MainButton({super.key, required this.text, required this.onPressed});

  final String text;
  final double height = 55;
  final double width = double.infinity;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Appcolor.primarycolor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(fontSize: 16, color: Appcolor.textcolor),
        ),
      ),
    );
  }
}
