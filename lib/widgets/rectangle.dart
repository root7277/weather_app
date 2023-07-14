import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Rectangle extends StatelessWidget {
  final String txt;
  final IconData icon1;
  final IconData icon2;
  final String txt1;
  final String txt2;

  const Rectangle({
    super.key,
    required this.txt,
    required this.icon1,
    required this.icon2,
    required this.txt1,
    required this.txt2,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Container(
        height: 45,
        decoration: const BoxDecoration(
        color: Color.fromARGB(255, 49, 49, 49),
        borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, top: 9, bottom: 10),
          child: Row(children: [
            SizedBox(
              width: 100,
              child: Text(
                txt,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 15),
            Icon(
              icon1,
              size: 28,
              color: Colors.white,
            ),
            const SizedBox(width: 9),
            Icon(
              icon2,
              size: 28,
              color: Colors.white,
            ),
            const SizedBox(width: 10),
            SvgPicture.asset('assets/drop.svg', width: 11, height: 15),
            const SizedBox(width: 5),
            Text(
              txt1,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              txt2,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ],
         ),
        ),
      ),
    );
  }
}