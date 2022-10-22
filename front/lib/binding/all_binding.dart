import 'package:front/controllers/add_cart_controller.dart';
import 'package:front/controllers/add_favorite_controller.dart';
import 'package:front/controllers/cart_controller.dart';
import 'package:front/controllers/favorite_controller.dart';
import 'package:front/controllers/profile_controller.dart';
import 'package:front/controllers/search_controller.dart';
import 'package:get/get.dart';

class AppBindings extends Bindings{
  @override
  void dependencies() {
    Get.put<CartController>(CartController());
    Get.put<FavoriteController>(FavoriteController());
    Get.put<AddCartController>(AddCartController());
    Get.put<ProfileController>(ProfileController());
    Get.put<AddFavoriteController>(AddFavoriteController());
    Get.put<SearchController>(SearchController());
  }
}