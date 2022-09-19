import 'package:flutter/material.dart';
import 'package:front/screens/wishlist_page/components/body1.dart';
import 'package:front/screens/wishlist_page/components/favorite_list.dart';

import '../cart_page/components/body.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        title: const Text(
          'Favorite',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: FavorList(),
    );
  }
}
