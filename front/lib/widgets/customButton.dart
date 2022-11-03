import 'package:flutter/material.dart';
import 'package:front/services/auth_service/auth.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key, this.text,
  }) : super(key: key);

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 7),
      margin: const EdgeInsets.only(right: 5, left: 5, top: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(196,137,198,.1),
              blurRadius: 10,
              offset: Offset(0,.1),
            )
          ]
      ),
      child: GestureDetector(
        onTap: () {
          signOut();
        },
        child: Center(
          child: Text(text!,
              style: const TextStyle(
                  color: Colors.redAccent,
                  fontWeight: FontWeight.normal,
                  fontSize: 18)),
        )

      ) ,
    );
    //   MaterialButton(
    //   onPressed: (){
    //
    //   },
    //   height: 55,
    //   minWidth: double.infinity,
    //   color: Colors.redAccent.withOpacity(0.9),
    //   shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(5)),
    //   child: Text(text!,
    //       style: const TextStyle(
    //           color: Colors.white,
    //           fontWeight: FontWeight.bold,
    //           fontSize: 18)),
    // );
  }
}