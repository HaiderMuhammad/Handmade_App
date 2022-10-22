import 'package:flutter/material.dart';
import 'package:front/nav_bar_controller.dart';
import 'package:front/screens/cart_page/cart_page.dart';
import 'package:front/screens/home_page/home.dart';
import 'package:front/screens/profile/profile_page.dart';
import 'package:front/screens/profile/profile_view.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:get/get.dart';
import 'screens/favorite_page/wishlist_page.dart';


class NavBar extends StatelessWidget {
  NavBarController navBarController = Get.put(NavBarController());

  NavBar({Key? key}) : super(key: key);

  final screens = [
    HomePage(),
    const FavoritePage(),
    const CartPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
              () {
          return IndexedStack(
            index: navBarController.selectedIndex.value,
            children: screens,
          );
        }
      ),
      bottomNavigationBar: Obx(
              () {
          return SalomonBottomBar(
            currentIndex: navBarController.selectedIndex.value,
            onTap: (index) {
              navBarController.changeIndex(index);
            },
            items: [

              /// Home
              SalomonBottomBarItem(
                icon: const Icon(Icons.home_outlined),
                title: const Text("Home"),
                selectedColor: const Color(0xff67C4A7),
              ),

              /// Likes
              SalomonBottomBarItem(
                icon: const Icon(Icons.favorite_border),
                title: const Text("Wishlist"),
                selectedColor: const Color(0xff67C4A7),
              ),

              /// Search
              SalomonBottomBarItem(
                icon: const Icon(Icons.shopping_cart_outlined),
                title: const Text("Cart"),
                selectedColor: const Color(0xff67C4A7),
              ),

              /// Profile
              SalomonBottomBarItem(
                icon: const Icon(Icons.person_outline_rounded),
                title: const Text("Profile"),
                selectedColor: const Color(0xff67C4A7),
              ),
            ],
          );
        }
      ),
    );
  }
}
