import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
  const ProductView({
    Key? key,
    required this.productName,
    required this.oldPrice,
    required this.newPrice,
    required this.image,
  }) : super(key: key);

  final String productName;
  final String oldPrice;
  final String newPrice;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 3,right: 3,top: 3),
      height: 207,
      width: 125,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: const Color(0xffF0F2F1)),
        borderRadius: BorderRadius.circular(8) 
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6.0),
            child: Image.asset(image,
            height: 123,
            fit: BoxFit.fitWidth,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5,left: 6,right: 6,bottom: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(productName,
                style: const TextStyle(
                  fontSize: 12,
                ),
                ),
                 Text(oldPrice,
                    style: const TextStyle(
                    fontSize: 12,
                    decoration: TextDecoration.lineThrough
                  ),
                ),
                Text(newPrice,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold
                ),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
