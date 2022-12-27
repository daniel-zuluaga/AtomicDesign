import 'package:atomic_design/fundation/color_fundation.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {

  final double width;
  final double height;
  final String? labelText;
  final String hintText;
  final Widget? suffixIcon;
  final Widget? iconInput;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final Color? borderColor;

  const InputField({super.key, 
    required this.width, 
    required this.height, 
    this.labelText, 
    required this.hintText, 
    this.iconInput, 
    this.labelStyle, 
    this.hintStyle, 
    this.suffixIcon, 
    this.enabledBorder, 
    this.focusedBorder, 
    this.borderColor, 
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width, vertical: height),
        child: TextField(
          decoration: InputDecoration(
            labelText: labelText,
            hintStyle: hintStyle ?? const TextStyle(color: h3Color),
            labelStyle: labelStyle ?? const TextStyle(color: h3Color),
            hintText: hintText,
            icon: iconInput ?? const Icon(Icons.reduce_capacity_rounded),
            suffixIcon: suffixIcon ?? const Icon(Icons.search_rounded),
            enabledBorder: enabledBorder ??
              OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor ?? inputEnabledColor,
                  width: 1.5,
                ),
              ),
            focusedBorder: focusedBorder ??
              OutlineInputBorder(
              borderSide: BorderSide(
                color: borderColor ?? inputFocusedField,
                width: 1.2,
              ),
            ),
            filled: false,
            fillColor: inputFillColor
          ),
        ),
      ),
    );
  }
}