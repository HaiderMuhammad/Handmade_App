

import 'package:front/api_call/product_api/api_methods.dart';
import 'package:front/network_model/all_carts.dart';
import 'package:get/get.dart';

class CartController extends GetxController{
  ApiServices api = ApiServices();

  RxList<CartsModel> cartList = <CartsModel>[].obs;
  @override
  void onInit() {
    getCarts();
  }

  @override
  void onClose() {

  }

  @override
  void onReady() {

  }

  void getCarts() async {
    List<CartsModel>? carts = await api.getCart();
    cartList.value = carts?? [];
  }

  void reduceItem( String idItem) async {
   await api.reduceItem(idItem);
   getCarts();
  }
  void increse( String idItem) async {
    await api.increaseItem(idItem);
    getCarts();
  }

  void deleteCart(String idItem) async {
    await api.deleteCart(idItem);
    getCarts();
  }
}