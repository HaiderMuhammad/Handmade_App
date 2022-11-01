import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ProfileField extends StatelessWidget {
  const ProfileField({Key? key, this.text, this.text2, this.icon, this.icon2,}) : super(key: key);

  final String? text;
  final String? text2;
  final IconData? icon;
  final IconData? icon2;


  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 30, bottom: 60),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(196, 135, 198, .2),
                blurRadius: 10,
                offset: Offset(0, .1),
              )
            ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text!,
                  style: GoogleFonts.roboto(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87
                  ),
                ),
                Icon(icon, size: 20, color: Colors.black87,),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Divider(color: Colors.grey,),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text2!,
                  style: GoogleFonts.roboto(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87
                  ),
                ),
                Icon(icon2, size: 22, color: Colors.black87,),
              ],
            ),
          ],
        )
    );
  }
}
