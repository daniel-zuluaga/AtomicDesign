import 'package:atomic_design/fundation/color_fundation.dart';
import 'package:atomic_design/tokens/typography_text.dart';
import 'package:flutter/material.dart';

class OurText extends StatelessWidget{
  final String? text;
  final Color? colorText;
  final double? fontSize;
  final TextAlign? textAlign;
  const OurText ({
    Key? key,
    required this.text,
    this.colorText,
    this.fontSize,
    this.textAlign
  }):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Text(
        text!,
        style: TextStyle(color: colorText, fontSize: fontSize ),
        textAlign: TextAlign.center,
        maxLines: 4
    );
  }
}

class H1 extends StatelessWidget{
  final String? text;
  final Color? colorText;
  final TextAlign? textAlign;
  final double? fontSizeText;

  const H1({
    Key? key, 
    required this.text, 
    this.colorText, 
    this.textAlign, this.fontSizeText
  }):super(key:key);

  @override
  Widget build(BuildContext context) {
    return OurText (
      text:text, 
      colorText: colorText ?? h1Color, 
      key: key,
      textAlign: textAlign,
      fontSize: fontSizeText ?? h1Size,
    );
  }
}

class H2 extends StatelessWidget{
  final String? text;
  final Color? colorText;
  final TextAlign? textAlign;
  final double? fontSizeText;

  const H2({
    Key? key, 
    required this.text, 
    this.colorText, 
    this.textAlign, 
    this.fontSizeText
  }):super(key:key);
  @override
  Widget build(BuildContext context) {
    return OurText (
      text:text, 
      colorText: colorText ?? h2Color,
      fontSize: fontSizeText ?? h2Size, 
      textAlign: textAlign,
      key: key
    );
  }
}

class ContentText extends StatelessWidget{
  final String? text;
  final Color? colorText;
  final TextAlign? textAlign;
  final double? fontSizeText;

  const ContentText({
    Key? key, 
    required this.text, 
    this.colorText, 
    this.textAlign, 
    this.fontSizeText
  }):super(key:key);
  @override
  Widget build(BuildContext context) {
    return OurText (
      text:text, 
      colorText: colorText ?? contentColor,
      fontSize: fontSizeText ?? contentTextSize, 
      textAlign: textAlign,
      key: key,);
  }
}

class NormalText extends StatelessWidget{
  final String? text;
  const NormalText({Key? key, this.text}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return OurText (text:text, colorText: h3Color, key: key,);
  }
}