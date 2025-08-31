import 'package:flutter/material.dart';
import 'package:necture_ui/core/utils/appcolor.dart';

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({
    super.key,
    this.label,
    this.hint,
    this.validator,
  });

  final String? label;
  final String? hint;
  final String? Function(String?)? validator;

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      obscureText: _obscureText,
      decoration: InputDecoration(
        labelText: widget.label,
        hintText: widget.hint,
        labelStyle: TextStyle(
          fontSize: 16,
          color: Appcolor.grayColor,
          fontWeight: FontWeight.w700,
        ),
        prefixIcon: const Icon(Icons.lock, color:Appcolor.primaryColor),
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility_off : Icons.visibility,
            color:Appcolor.primaryColor,
          ),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Appcolor.primaryColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Appcolor.primaryColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.red),
        ),
      ),
    );
  }
}