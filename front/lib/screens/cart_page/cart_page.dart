import 'package:flutter/material.dart';
import 'package:front/controllers/cart_controller.dart';
import 'package:front/screens/cart_page/cart_view.dart';
import 'package:get/get.dart';


class CartPage extends StatelessWidget {
  CartPage({Key? key}) : super(key: key);

  final CartController cartController = Get.find<CartController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  Column(
        children: const [
          CartView(),
        ],
      )
    );
  }
}


