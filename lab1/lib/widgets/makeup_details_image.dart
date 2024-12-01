import 'package:flutter/material.dart';

class MakeupDetailImage extends StatelessWidget {
  final String image;

  const MakeupDetailImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle),
      child: Image.network(image, fit: BoxFit.fill, alignment: Alignment.center),
    );
  }
}