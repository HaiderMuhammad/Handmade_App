import 'package:front/controllers/favorite_controller.dart';
import 'package:get/get.dart';


class FavoriteBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<FavoriteController>(FavoriteController());
  }

}