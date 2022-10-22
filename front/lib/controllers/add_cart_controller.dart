


import 'package:front/api_call/product_api/api_methods.dart';
import 'package:front/controllers/cart_controller.dart';
import 'package:get/get.dart';

class AddCartController extends GetxController{

  ApiServices api = ApiServices();
  CartController cartController = Get.find<CartController>();

  @override
  void onInit() {
  }

  @override
  void onReady() {

  }

  @override
  void onClose() {
  }

  void addToCart(String idItem) async{
    await api.addToCart(idItem);
    cartController.getCarts();
  }
}