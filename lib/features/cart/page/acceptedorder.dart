import 'package:flutter/material.dart';
import 'package:necture_ui/core/constants/app_images.dart';
import 'package:necture_ui/core/functions/navigation.dart';
import 'package:necture_ui/core/widgets/main_button.dart';
import 'package:necture_ui/features/main/main_app_screen.dart';

class Acceptedorder extends StatelessWidget {
  const Acceptedorder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Image.asset(AppImages.acceptedorder, width: 270, height: 240),
            ),
            SizedBox(height: 66),
            Text(
              "Your Order has been\n accepted",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 5),
            Text(
              "Your items has been placed and is on\n it’s way to being processed",
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: MainButton(
                text: "Back To Home",
                onPressed: () {
                  pushAndRemoveUntil(context, const MainAppScreen());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
