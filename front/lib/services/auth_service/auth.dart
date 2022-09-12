import 'dart:convert';
import 'package:front/navBar.dart';
import 'package:front/register/login_page.dart';
import 'package:front/services/local_database/shared_preferences.dart';
import 'package:get/get.dart' hide Response;
import 'package:dio/dio.dart';
import 'package:front/models/account/model.dart';
import 'google_login.dart';


class AuthService{
  static RxBool isLoading = false.obs;

  static Future<Account?> signIn({required String email, required String password}) async{
    isLoading.value = true;
   try{
     Response res = await Dio().post(
         'http://restapi.adequateshop.com/api/authaccount/login',
         data: jsonEncode({
           'email': email,
           'password': password
         })
     );
     Map data = res.data['data'];
     Account account = Account(
         id: data['Id'],
         name: data['Name'],
         email: data['Email'],
         token: data['Token']
     );

     Database.prefs.setString('email', email);
     Database.prefs.setString('password', password);
     Account.currentAccount = account;
     Get.offAll( NavBar());
   }
   catch (e){
     return null;
   }
   isLoading.value = false;
   return null;
   // print(Map.from(res.data));
  }



  static signOut(){
    Get.offAll(LoginPage);
  }
}