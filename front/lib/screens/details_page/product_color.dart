import 'package:flutter/material.dart';

class ProductColors extends StatelessWidget {
  const ProductColors({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Choose the color',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 13,
              color: Colors.black87,
              height: 2
          ),
        ),
        Row(
          children: [
        Container(
        height: 45,
        width: 75,
        margin: const EdgeInsets.only(top: 10, bottom: 25, right: 10),
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.cyan
        ),
        ),
            Container(
              height: 45,
              width: 75,
              margin: const EdgeInsets.only(top: 10, bottom: 25, right: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.black
              ),
            ),
            Container(
              height: 45,
              width: 75,
              margin: const EdgeInsets.only(top: 10, bottom: 25, right: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.orange
              ),
            ),
            Container(
              height: 45,
              width: 75,
              margin: const EdgeInsets.only(top: 10, bottom: 25, right: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.purple
              ),
            ),

          ],
        ),
      ],
    );
  }
}
