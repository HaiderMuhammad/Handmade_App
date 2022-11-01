

import 'package:front/api_call/product_api/api_methods.dart';
import 'package:front/network_model/profile.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController{
  ApiServices api = ApiServices();

  Rxn<ProfileModel> profileData = Rxn<ProfileModel>();
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
    ProfileModel? profile = await api.getProfile();
    profileData.value = profile;
  }
}