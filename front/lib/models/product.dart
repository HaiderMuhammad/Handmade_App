import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class Product{
  final String productName;
  final String oldPrice;
  final String newPrice;
  final String image;
  final Rx<Color> color;
  final String description;

  Product(this.productName, this.oldPrice, this.newPrice, this.image, this.description)
      :
        color = Colors.accents.elementAt(Random().nextInt(Colors.accents.length)).withOpacity(0.1).obs;

  static List<Product> products = [
    Product('Cotton T-shirt', '23,750 IQD', '14,750 IQD','assets/images/tshirt.jpg', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here'),
    Product('Cotton T-shirt', '23,750 IQD', '14,750 IQD','assets/images/tshirt.jpg', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here',),
    Product('Cotton T-shirt', '23,750 IQD', '14,750 IQD','assets/images/tshirt.jpg', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here',),
  ];
}