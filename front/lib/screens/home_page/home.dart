import 'package:flutter/material.dart';
import 'package:front/screens/home_page/address.dart';
import 'package:front/screens/home_page/horizontal_scroll.dart';
import 'package:front/screens/home_page/offers.dart';
import 'package:front/screens/home_page/product_title.dart';
import 'package:front/screens/home_page/product_view.dart';
import 'package:front/screens/home_page/search_field.dart';
import '../../models/category.dart';
import 'catergory.dart';
import 'flash_deals.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 15,

      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20, top: 15),
        child: ListView(
          children: [
            const Address(),

            const SearchField(),

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
                // border: BorderDirectional(bottom: BorderSide(width: 1,color: Color(0xffC8C8CB))),
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
                // border: BorderDirectional(bottom: BorderSide(width: 1,color: Color(0xffC8C8CB))),
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

