import 'package:flutter/material.dart';
import 'package:front/models/product.dart';

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
            ContainerColor(
              color: Product.productColor,
            ),
            Container(
              height: 45,
              width: 75,
              margin: const EdgeInsets.only(top: 10, bottom: 25, right: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Product.productColor.first
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

class ContainerColor extends StatelessWidget {
  const ContainerColor({
    Key? key, required this.color,
  }) : super(key: key);

  final List<Color> color;
  @override
  Widget build(BuildContext context) {

    return Container(
    height: 45,
    width: 75,
    margin: const EdgeInsets.only(top: 10, bottom: 25, right: 10),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(8),
    color: color.last
      ),
    );
  }
}
