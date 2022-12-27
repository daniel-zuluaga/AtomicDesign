
import 'dart:ffi';

import 'package:atomic_design/atoms/button_text.dart';
import 'package:atomic_design/atoms/input_field.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {

  final String hintText;
  final double? width;
  final double? height;

  const SearchWidget({
    super.key, 
    required this.hintText, 
    this.width, 
    this.height
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          InputField(
            width: width ?? 16, 
            height: height ?? 16, 
            hintText: hintText,
          ),
          const SizedBox(height: 10),
          ButtonText(
            onPressed: (){}, 
            child: IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.search_rounded)
            )
          )
        ],
      ),
    );
  }
}
