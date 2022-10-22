

import 'package:front/api_call/product_api/api_methods.dart';
import 'package:front/network_model/all_carts.dart';
import 'package:front/network_model/profile.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController{
  ApiServices api = ApiServices();

  RxList<ProfileModel>? profileList = <ProfileModel>[].obs;
  @override
  void onInit() {
    getProfile();
  }

  @override
  void onReady() {

  }

  @override
  void onClose() {

  }

  void getProfile() async{
    List<ProfileModel>? profiles = await api.getProfile();
    profileList?.value = profiles?? [];
  }
}