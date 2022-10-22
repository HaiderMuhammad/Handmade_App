

import 'package:front/api_call/product_api/api_methods.dart';
import 'package:front/controllers/favorite_controller.dart';
import 'package:get/get.dart';

class AddFavoriteController extends GetxController{
  ApiServices api = ApiServices();
  FavoriteController favoriteController = Get.find<FavoriteController>();

  @override
  void onInit() {
  }

  @override
  void onReady() {

  }

  @override
  void onClose() {

  }

  void addToFavorite(String idItem) async{
    await api.addToFav(idItem);
    favoriteController.getFavoriteCart();
  }
}