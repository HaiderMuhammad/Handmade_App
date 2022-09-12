import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key, this.description,
  }) : super(key: key);

  final description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Description of Product',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.black87,
              height: 2.5
          ),
        ),
        Text(
          description,
          style: const TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 12,
              color: Colors.black87,
              height: 1.8
          ),
        ),
      ],
    );
  }
}