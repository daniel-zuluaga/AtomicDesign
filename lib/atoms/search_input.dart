import 'package:flutter/material.dart';

class SearchInputField extends StatelessWidget {

  final double width;
  final double height;
  final String? labelText;
  final String hintText;
  final Widget? iconInput;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final IconData? iconButton;
  final Function onPress;

  const SearchInputField({super.key, 
    required this.width, 
    required this.height, 
    this.labelText, 
    required this.hintText, 
    this.iconInput, 
    this.labelStyle, 
    this.hintStyle, 
    this.iconButton, 
    required this.onPress
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width, vertical: height),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: labelText,
              hintStyle: hintStyle,
              labelStyle: labelStyle,
              hintText: hintText,
              icon: iconInput
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: width, vertical: height),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width, vertical: height),
            child: ElevatedButton(
              onPressed: onPress(), 
              child: Icon(iconButton ?? Icons.search_rounded),
            ),
          ),
        )
      ],
    );
  }
}