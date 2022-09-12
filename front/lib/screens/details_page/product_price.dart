import 'package:flutter/material.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice({
    Key? key, required this.price,
  }) : super(key: key);

  final String price;

  @override
  Widget build(BuildContext context) {
    return Text(
      price,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 22,
        color: Color(0xff67C4A7),
      ),
    );
  }
}