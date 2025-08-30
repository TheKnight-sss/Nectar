

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:necture_ui/core/constants/app_images.dart';
import 'package:necture_ui/core/functions/email_validator.dart';
import 'package:necture_ui/core/functions/navigation.dart';
import 'package:necture_ui/core/functions/password_validation.dart';
import 'package:necture_ui/core/functions/username_validation.dart';
import 'package:necture_ui/core/utils/appcolor.dart';
import 'package:necture_ui/core/widgets/custom_password_field.dart';
import 'package:necture_ui/core/widgets/custom_text_field.dart';
import 'package:necture_ui/core/widgets/main_button.dart';
import 'package:necture_ui/features/auth/pages/loginscreen.dart';
import 'package:necture_ui/features/location/location.dart';

class SignScreen extends StatefulWidget {
  const SignScreen({super.key});

  @override
  State<SignScreen> createState() => _SignScreenState();
}

class _SignScreenState extends State<SignScreen> {
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
                        "Sign Up",
                        style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Create your Account",
                        style: TextStyle(color: Appcolor.greycolor, fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  CustomTextField(
                    label: "Full Name",
                    prefixIcon: Icon(Icons.person,color: Appcolor.primarycolor,),
                    validator: usernamevalidation,
                  ),
                  SizedBox(height: 20,),
                  CustomTextField(
                    label: "Email",
                    hint: "Enter The Email",
                    prefixIcon: Icon(Icons.email, color: Appcolor.primarycolor),
                    validator: emailValidation,
                  ),
                  SizedBox(height: 20),
                  CustomPasswordField(
                    label: "Password",
                    hint: "Enter The Passwort",
                    prefixIcon: Icon(Icons.lock, color: Appcolor.primarycolor),
                    validator: passwordValidation,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password",
                          style: TextStyle(color: Appcolor.blackcolor),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  MainButton(text: "Sign Up",onPressed: () {
                    if (formkey.currentState!.validate()) {
                      pushTo(context, Location());
                    }
                  },),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already Have Account? ",
                        style: TextStyle(color: Appcolor.blackColor,fontSize: 14,fontWeight: FontWeight.w600),
                      ),
                      TextButton(
                        onPressed: () {
                          pushwithReplacement(context, LoginScreen());
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(color: Appcolor.primarycolor),
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
