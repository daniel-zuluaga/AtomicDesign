import 'package:flutter/material.dart';
class OurImage extends StatelessWidget {
  final String? url;
  final double? widthImage;
  final double? heightImage;
  final BoxFit? boxFit;

  const OurImage({
    super.key, 
    this.url,
    this.heightImage,
    this.widthImage, 
    this.boxFit
  });

  @override
  Widget build(BuildContext context) {
    Widget element =  Image.network(
      url!,
      width:widthImage ,
      height: heightImage,
      fit: boxFit,
    );
    return element;
  }

}