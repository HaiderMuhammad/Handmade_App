import 'package:flutter/material.dart';
import 'package:front/screens/favorite/components/body.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: const Body(),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 1,
    leading: IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
      ),
    ),
    centerTitle: true,
    title: const Text(
      'Favorite',
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
  );
}