import 'package:atomic_design/fundation/color_fundation.dart';
import 'package:flutter/material.dart';

class ButtonText extends StatelessWidget {

  final Function onPressed;
  final Widget child;
  final ButtonStyle? buttonStyle;

  const ButtonText({
    super.key, 
    required this.onPressed, 
    required this.child, 
    this.buttonStyle
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){},
        style: buttonStyle ?? ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
          colorButton,
        ),
      ),
      child: child,
    );
  }
}