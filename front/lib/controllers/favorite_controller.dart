

import 'package:front/api_call/product_api/api_methods.dart';
import 'package:front/network_model/all_favorite.dart';
import 'package:get/get.dart';

class FavoriteController extends GetxController{
  ApiServices api = ApiServices();

  RxList<FavoriteModel> favoriteList = <FavoriteModel>[].obs;

  @override
  void onInit() {
    getFavoriteCart();
  }

  @override
  void onReady() {

  }

  @override
  void onClose() {

  }

  void getFavoriteCart() async{
    List<FavoriteModel>? favorites = await api.getFav();
    favoriteList.value = favorites?? [];
  }

  void deleteFavoriteCart(String idItem) async{
    await api.deleteFav(idItem);
    getFavoriteCart();
  }
}