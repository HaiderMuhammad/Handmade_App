import 'package:flutter/material.dart';

class ProductName extends StatelessWidget {
  const ProductName({
    Key? key, required this.name,
  }) : super(key: key);

  final String name;
  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 15,
          color: Colors.black87
      ),

    );
  }
}