import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SunRise extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final colorContainer;
  final String imageContainer;
  final String textContainer;
  final String textContainerTitle;
  const SunRise({super.key, required this.colorContainer, required this.imageContainer, required this.textContainerTitle, required this.textContainer});

  @override
  Widget build(BuildContext context) {
    final colorContainer2 = colorContainer;
    return Container(
      padding: const EdgeInsets.only(top: 5),
      width: 141,
      height: 132,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: colorContainer2,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(imageContainer, width: 86, height: 63),
          const SizedBox(height: 10),
          Text(textContainerTitle, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: Colors.white)),
          const SizedBox(height: 3),
          Text(textContainer, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Colors.white)),
        ],
      ),
    );
  }
}