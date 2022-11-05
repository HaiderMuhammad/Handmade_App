import 'package:front/api_call/product_api/api_methods.dart';
import 'package:front/controllers/profile_controller.dart';
import 'package:get/get.dart';

class NavBarController extends GetxController {
  var selectedIndex = 0.obs;
  ProfileController profileController = Get.find<ProfileController>();

  @override
  void onInit() {
    profileController.getProfile();
  }

  void changeIndex(int index){
    selectedIndex.value = index;
  }

  @override
  void onReady() {

  }

  @override
  void onClose() {

  }
}