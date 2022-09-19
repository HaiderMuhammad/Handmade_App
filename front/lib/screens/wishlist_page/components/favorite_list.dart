import 'package:flutter/material.dart';
import 'package:front/models/Favorite.dart';
import 'package:front/screens/wishlist_page/components/body1.dart';
import 'package:get/get.dart';

class FavorList extends StatelessWidget {
  FavorList({Key? key}) : super(key: key);

  final ScrollController  scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Obx((){
      return ListView(
        controller: scrollController,
        children: Favorite.favList.map((e) => Body1(favorite: e,)).toList(),
      );
    }
    );
  }
}