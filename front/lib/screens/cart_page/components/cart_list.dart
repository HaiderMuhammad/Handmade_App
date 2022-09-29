import 'package:front/models/Favorite.dart';
import 'package:front/screens/cart_page/components/cart_item.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';


class CartList extends StatelessWidget {
  CartList({Key? key}) : super(key: key);

  final ScrollController  scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Obx((){
      return ListView(
        controller: scrollController,
        children: Favorite.cartList.map((e) => CartItem(favorite: e,)).toList(),
      );
    }
    );
  }
}