import 'package:front/controllers/profile_controller.dart';
import 'package:get/get.dart';

class FavoriteBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<ProfileController>(ProfileController());
  }

}