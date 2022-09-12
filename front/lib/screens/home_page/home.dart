import 'package:flutter/material.dart';
import 'package:front/screens/home_page/address.dart';
import 'package:front/screens/home_page/horizontal_scroll.dart';
import 'package:front/screens/home_page/offers.dart';
import 'package:front/screens/home_page/product_title.dart';
import 'package:front/screens/home_page/product_view.dart';
import 'package:front/screens/home_page/search_field.dart';

import '../../models/category.dart';
import '../../models/product.dart';
import 'catergory.dart';
import 'flash_deals.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Address(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: ListView(
          children: [
            const SearchField(),

            const Offers(),

            HorizontalScroll(
              list: Categories.categories.map((e) =>
                  Category(icon: e.icon, color: e.color)).toList(), height: 70,),

            const ProductsTitle(title: 'Recent Products',),

            HorizontalScroll(
              list: Product.products.map((e) => ProductView(
                  productName: e.productName, oldPrice: e.oldPrice,
                  newPrice: e.newPrice, image: e.image, description: e.description,)).toList(),
              height: 207,),

            const ProductsTitle(title: 'Flash Deals',),

            HorizontalScroll(
              list: Product.products.map((e) => FlashDealsView(
                  productName: e.productName, oldPrice: e.oldPrice,
                  newPrice: e.newPrice, image: e.image, product:e)).toList(),
              height: 107,),
          ],
        ),
      ),
    );
  }
}
