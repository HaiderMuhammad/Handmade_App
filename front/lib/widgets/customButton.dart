import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key, this.text,
  }) : super(key: key);

  final String? text;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: (){},
      height: 55,
      minWidth: double.infinity,
      color: Colors.redAccent.withOpacity(0.9),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5)),
      child: Text(text!,
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18)),
    );
  }
}