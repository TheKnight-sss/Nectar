import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:necture_ui/core/constants/app_images.dart';
import 'package:necture_ui/core/functions/navigation.dart';
import 'package:necture_ui/core/utils/appcolor.dart';
import 'package:necture_ui/features/auth/pages/loginscreen.dart';
import 'package:necture_ui/features/welcome/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      pushwithReplacement(context, WelcomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.primaryColor,
      body: Center(
        child: SvgPicture.asset(AppImages.logoSvg,width: 250,),
      ),
    );
  }
}
