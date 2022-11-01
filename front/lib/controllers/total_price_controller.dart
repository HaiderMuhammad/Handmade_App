
import 'package:front/api_call/product_api/api_methods.dart';
import 'package:front/network_model/total_price.dart';
import 'package:get/get.dart';

class TotalPriceController extends GetxController{
  ApiServices api = ApiServices();
  RxList<TotalPriceModel> totalPriceList = <TotalPriceModel>[].obs;

  @override
  void onInit() {
    getTotalPrice();
  }

  @override
  void onReady() {

  }

  @override
  void onClose() {

  }

  getTotalPrice() async{
    List<TotalPriceModel>? totalPrice = await api.getTotalPrice();
    totalPriceList.value = totalPrice?? [];
  }
}