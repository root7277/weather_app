import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HUMIDITY extends StatelessWidget {
  final String imageHum;
  final String textHum;
  final String textHumTitle;
  const HUMIDITY({super.key, required this.imageHum, required this.textHumTitle, required this.textHum});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8),
      width: 93,
      height: 85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 49, 49, 49),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(imageHum, width: 26, height: 32),
          const SizedBox(height: 8),
          Text(textHumTitle, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: Colors.white)),
          const SizedBox(height: 2),
          Text(textHum, style: const TextStyle(fontSize: 7, fontWeight: FontWeight.w400, color: Colors.white)),
        ],
      ),
    );
  }
}