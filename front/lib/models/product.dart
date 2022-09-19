import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class Product{
  final int? id;
  final String productName;
  final String oldPrice;
  final String newPrice;
  final String image;
  final Rx<Color> color;
  final String description;

  Product(this.id, this.productName, this.oldPrice, this.newPrice, this.image, this.description,)
      :
        color = Colors.accents.elementAt(Random().nextInt(Colors.accents.length)).withOpacity(0.1).obs;

  static RxList<Product> products = <Product>[
    Product(1,'Cotton T-shirt', '23,99 IQD', '14,750 IQD','assets/images/tshirt.jpg', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here'),
    Product(2,'Cotton T-shirt', '23,750 IQD', '14,750 IQD','assets/images/tshirt.jpg', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here',),
    Product(3,'Cotton T-shirt', '23,750 IQD', '14,750 IQD','assets/images/tshirt.jpg', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here',),
  ].obs;

  static List<MaterialColor> productColor = <MaterialColor>[
    Colors.red,
    Colors.blue,
    Colors.orange,
    Colors.yellow
  ];
}