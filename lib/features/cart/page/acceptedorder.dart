import 'package:flutter/material.dart';
import 'package:necture_ui/core/constants/app_images.dart';
import 'package:necture_ui/core/functions/navigation.dart';
import 'package:necture_ui/core/widgets/main_button.dart';
import 'package:necture_ui/features/home/homescreen.dart';

class Acceptedorder extends StatelessWidget {
  const Acceptedorder({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [SizedBox(child: Image.asset(AppImages.acceptedorder),),
        SizedBox(height: 66,),
        Text("Your Order has been\n accepted",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),)
        ,SizedBox(height: 4,),
        MainButton(text: "Back To Home", onPressed: () {
          pushAndRemoveUntil(context, const HomeScreen());
        })
        ],
      ),
    );
  }
}