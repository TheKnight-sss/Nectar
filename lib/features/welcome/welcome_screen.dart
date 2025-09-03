import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:necture_ui/core/constants/app_images.dart';
import 'package:necture_ui/core/functions/navigation.dart';
import 'package:necture_ui/core/utils/appcolor.dart';
import 'package:necture_ui/core/utils/text_styles.dart';
import 'package:necture_ui/core/widgets/main_button.dart';
import 'package:necture_ui/features/auth/pages/loginscreen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //image
          Image.asset(
            AppImages.welcome1,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Positioned(
            bottom: 70,
            left: 30,
            right: 30,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AppImages.carrotSvg,
                  colorFilter: ColorFilter.mode(
                    Appcolor.searchBarColor,
                    BlendMode.srcIn,
                  ),
                ),
                Text(
                  "Welcome \nto Our Store",
                  textAlign: TextAlign.center,
                  style: TextStyles.titleStyle(color: Colors.white, fontSize: 48),
                ),
                Text(
                  "Get your groceries in as fast as one hour",
                  textAlign: TextAlign.center,
                  style: TextStyles.bodyStyle(color: Colors.white),
                ),
                Gap(40),
                MainButton(text: "Get Started", onPressed: () {
                  pushTo(context, LoginScreen());
                })
              ],
            ),
          ), //welcome data
        ],
      ),
    );
  }
}
