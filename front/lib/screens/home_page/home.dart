import 'package:flutter/material.dart';
import 'package:front/api_call/product_api/api_methods.dart';
import 'package:front/controllers/search_controller.dart';
import 'package:front/models/category.dart';
import 'package:front/screens/home_page/address.dart';
import 'package:front/screens/home_page/catergory.dart';
import 'package:front/screens/home_page/horizontal_scroll.dart';
import 'package:front/screens/home_page/offers.dart';
import 'package:front/screens/home_page/product_title.dart';
import 'package:front/screens/home_page/product_view.dart';
import 'package:front/screens/home_page/search_field.dart';
import 'package:front/screens/search_page/search_page.dart';
import 'package:get/get.dart';
import 'flash_deals.dart';


class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  ApiServices api = ApiServices();
  SearchController searchController = Get.find<SearchController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20, top: 15),
        child: ListView(
          children: [
            const Address(),
            SearchField(controller: searchController.controller),

            const Offers(),

            HorizontalScroll(
              list: Categories.categories.map((e) =>
                  Category(icon: e.icon, color: e.color)).toList(), height: 70,),

            const ProductsTitle(title: 'Recent Products',),

            Container(
              height: 215,
              padding: const EdgeInsets.only(bottom: 10),
              margin: const EdgeInsets.only(bottom: 16),
              decoration: const BoxDecoration(
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ProductView()
                  ],
                ),
              ),
            ),

            const ProductsTitle(title: 'Flash Deals',),

            Container(
              height: 105,
              padding: const EdgeInsets.only(bottom: 10),
              margin: const EdgeInsets.only(bottom: 16),
              decoration: const BoxDecoration(
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    FlashDealView()
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}


