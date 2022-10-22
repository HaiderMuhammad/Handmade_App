

import 'package:flutter/material.dart';
import 'package:front/api_call/product_api/api_methods.dart';
import 'package:front/network_model/all_products.dart';
import 'package:get/get.dart';

class SearchController extends GetxController{

  ApiServices api = ApiServices();
  RxList<ProductsModel> searchList = <ProductsModel>[].obs;
  final TextEditingController controller = TextEditingController();

  @override
  void onInit() {
  }

  @override
  void onReady() {

  }

  @override
  void onClose() {

  }

  void searchProducts() async{
    if(controller.text.isEmpty){
      return;
    }
    else{
      List<ProductsModel>? products = await api.getProducts(search: controller.text);
      searchList.value = products?? [];
      // print(products?.length.toString());
    }
  }
}