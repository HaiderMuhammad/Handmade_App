import 'package:flutter/material.dart';
import 'package:front/screens/details_page/product_color.dart';
import 'package:front/screens/details_page/product_description.dart';
import 'package:front/screens/details_page/product_image.dart';
import 'package:front/screens/details_page/product_name.dart';
import 'package:front/screens/details_page/product_price.dart';

import 'add_button.dart';


class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key, required this.productName, required this.oldPrice, required this.newPrice, required this.image, required this.description}) : super(key: key);

  final String productName;
  final String oldPrice;
  final String newPrice;
  final String image;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Details product',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Column(
        children: [

          ProductImage(image: image,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                ProductName(name: productName,),

                ProductPrice(price: oldPrice,),

                const SizedBox(height: 10,),
                const Divider(height: 3, color: Colors.grey,),

                const ProductColors(),

                const Divider(height: 3, color: Colors.grey,),

                ProductDescription(description: description,),

                const AddButton(),
              ],
            ),
          )
        ],
      ),
    );
  }
}