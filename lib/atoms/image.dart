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
      url ?? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjZVyTyGxB7VKc1NVgA9jdSDgbHk2pipyQ4LKx6kAHm-w01RU8120y5PWbe-mbm6gB3uU&usqp=CAU",
      width:widthImage ,
      height: heightImage,
      fit: boxFit,
    );
    return element;
  }

}