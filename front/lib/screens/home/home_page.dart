import 'package:flutter/material.dart';
import 'package:front/models/category.dart';
import 'package:front/models/product.dart';
import 'package:front/screens/home/app_bar_title.dart';
import 'package:front/screens/home/category.dart';
import 'package:front/screens/home/flash_deals_view.dart';
import 'package:front/screens/home/product_view.dart';
import 'package:front/screens/home/products_Title.dart';
import 'package:front/screens/home/horizontal_scroll.dart';
import 'package:front/screens/home/sale_template.dart';
import 'package:front/screens/home/search_here.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: ListView(
          children: [
            const SearchHere(),

            const SaleTemplate(),
            
            HorizontalScroll(list: Categories.categories.map((e) => Category(icon: e.icon, color: e.color)).toList(), height: 70,),

            const ProductsTitle(title: 'Recent Products',),

            HorizontalScroll(list: Product.products.map((e) => ProductView(productName: e.productName, oldPrice: e.oldPrice, newPrice: e.newPrice, image: e.image)).toList(),
             height: 207,),

            const ProductsTitle(title: 'Flash Deals',),
            
            HorizontalScroll(list: Product.products.map((e) => FlashDealsView(productName: e.productName, oldPrice: e.oldPrice, newPrice: e.newPrice, image: e.image)).toList(),
             height: 107,),
          ],
        ),
      ),
    );
  }
}