import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:necture_ui/core/constants/app_images.dart';
import 'package:necture_ui/core/functions/email_validator.dart';
import 'package:necture_ui/core/functions/navigation.dart';
import 'package:necture_ui/core/functions/password_validation.dart';
import 'package:necture_ui/core/utils/appcolor.dart';
import 'package:necture_ui/core/widgets/custom_password_field.dart';
import 'package:necture_ui/core/widgets/custom_text_field.dart';
import 'package:necture_ui/core/widgets/main_button.dart';
import 'package:necture_ui/features/auth/pages/signscreen.dart';
import 'package:necture_ui/features/home/homescreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [SvgPicture.asset(AppImages.carrotSvg)],
                  ),
                  SizedBox(height: 70),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Enter your emails and password",
                        style: TextStyle(
                          color: Appcolor.grayColor,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  CustomTextField(
                    label: "Email",
                    hint: "Enter The Email",
                    prefixIcon: Icon(Icons.email, color: Appcolor.primaryColor),

                    validator: emailValidation
                  ),
                  SizedBox(height: 20),
                  CustomPasswordField(
                    label: "Password",
                    hint: "Enter The Passwort",
                    validator: passwordValidation,                   
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password",
                          style: TextStyle(color: Appcolor.darkColor),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  MainButton(text: "Login",onPressed: () {
                    if (formkey.currentState!.validate()) {
                      pushwithReplacement(context, HomeScreen());
                    }
                  },),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          color: Appcolor.darkColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          pushTo(context, const SignScreen());
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Appcolor.primaryColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
