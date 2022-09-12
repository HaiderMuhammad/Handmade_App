import 'package:flutter/material.dart';
import 'package:front/models/product.dart';

class FlashDealsView extends StatelessWidget {
  const FlashDealsView({
    Key? key,
    required this.productName,
    required this.oldPrice,
    required this.newPrice,
    required this.image, required this.product,
  }) : super(key: key);

  final String productName;
  final String oldPrice;
  final String newPrice;
  final String image;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: 100,
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.only(left: 3,top: 3,bottom: 3),
      decoration: BoxDecoration(
        color: product.color.value,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 1.5, color: const Color(0xffF0F2F1)),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.asset('assets/images/tshirt.jpg',
              height: 96,
              width: 64,
              fit: BoxFit.fitWidth,),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:const [
                Text('Cotton T-shirt',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text('23,750 IQD',
                  style: TextStyle(
                      fontSize: 12,
                      decoration: TextDecoration.lineThrough
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text('14,750 IQD',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}