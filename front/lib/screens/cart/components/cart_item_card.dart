import 'package:flutter/material.dart';
import 'package:front/models/product.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6.0),
            child: Image.asset(
              product.image,
              width: 86,
              height: 76,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.productName,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  product.oldPrice,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff67C4A7),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
              ],
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.remove_circle_outline_outlined,
                  color: Color(0xff939393),
                ),
              ),
              const Text(
                '1',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add_circle_outline_outlined,
                  color: Color(0xff939393),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}