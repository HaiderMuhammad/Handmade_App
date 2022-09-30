import 'package:flutter/material.dart';
import 'package:front/models/Favorite.dart';
import 'package:get/get.dart';

import 'body1.dart';

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