import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:necture_ui/core/functions/addressvalidatiom.dart';
import 'package:necture_ui/core/functions/navigation.dart';
import 'package:necture_ui/core/utils/appcolor.dart';
import 'package:necture_ui/core/widgets/custom_text_field.dart';
import 'package:necture_ui/core/widgets/main_button.dart';
import 'package:necture_ui/features/home/homescreen.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 24,
            color: Appcolor.darkColor,
          ),
        ),
      ),
      backgroundColor: Appcolor.bgColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(26),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset("assets/images/location.svg"),
                  SizedBox(height: 40),
                  Text(
                    "Select Your Location",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: Appcolor.darkColor,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Swithch on your location to stay in tune with what's happening in your area",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                      color: Appcolor.grayColor,
                    ),
                  ),
                  SizedBox(height: 100),
                  CustomTextField(
                    validator: addressValidation,
                    label: "Address",
                    hint: "Enter Your Address (ex : Suez , Egypt)",
                  ),
                  SizedBox(height: 60),
                  MainButton(
                    text: "Submit",
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        pushwithReplacement(context, HomeScreen());
                      }
                    },
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