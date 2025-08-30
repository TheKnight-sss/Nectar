import 'package:flutter/material.dart';
import 'package:necture_ui/core/utils/appcolor.dart';

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({
    super.key,
    this.label,
    this.hint,
    this.prefixIcon,
    this.suffix, this.validator,
  });

  final String? label;
  final String? hint;
  final Widget? prefixIcon;
  final Widget? suffix;
  final String? Function(String?)? validator;

  @override
  State<CustomPasswordField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomPasswordField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: widget.prefixIcon,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
          icon: Icon(obscureText? Icons.visibility_off : Icons.visibility),
        ),
        labelText: widget.label,
        hintText: widget.hint,
        labelStyle: TextStyle(
          fontSize: 16,
          color: Appcolor.greycolor,
          fontWeight: FontWeight.w700,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Appcolor.primarycolor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Appcolor.primarycolor),
        ),
      ),
    );
  }
}
