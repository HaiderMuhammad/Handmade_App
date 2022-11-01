import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key, this.text,
  }) : super(key: key);

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          height: 0.7,
          width: Get.width *0.3,
          color: Colors.grey,
        ),
        Text(
          text!,
          style: GoogleFonts.roboto(
              fontWeight: FontWeight.normal,
              fontSize: 15,
              color: Colors.grey

          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 10),
          height: 0.7,
          width: Get.width *0.3,
          color: Colors.grey,
        ),
      ],
    );
  }
}