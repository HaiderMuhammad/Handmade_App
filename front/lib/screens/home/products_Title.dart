import 'package:flutter/material.dart';

class ProductsTitle extends StatelessWidget {
  const ProductsTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(title,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Color(0xff393F42)
      ),
      textAlign: TextAlign.left,
      ),
    );
  }
}