import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.text, this.colors});

  final String text;
  final List<Color>? colors;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115, height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color : Color(0xffD9D9D9),
          width: 2,
        ),
      ),
      child: Row(
        children: [
          Gap(10),
          Container(
            width: 17, height: 17,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors:colors?? [
                  Color(0xff225924),
                  Color(0xffE1DFDF),
                ],
              ),
            ),
          ),
          Gap(7),
          Text( text, style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w600,
            ),
          ),),
        ],
      ),
    );
  }
}
