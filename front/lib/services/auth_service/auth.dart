import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:front/models/account/signInModel.dart';
import 'package:front/models/account/signUpModel.dart';
import 'package:front/navBar.dart';
import 'package:front/services/local_database/shared_preferences.dart';
import 'package:get/get.dart' hide Response;
import 'package:dio/dio.dart';


class AuthService{
  static RxBool isLoading = false.obs;

  static Future<UserAccount?> signIn({required String email, required String password}) async{
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
     UserAccount account = UserAccount(
         id: data['Id'],
         email: data['Email'],
         token: data['Token']
     );
     Database.prefs.setString('email', email);
     Database.prefs.setString('password', password);
     UserAccount.currentAccount = account;
     Get.offAll( NavBar());
   }
   catch (e){
     return null;
   }
   isLoading.value = false;
   return null;
   // print(Map.from(res.data));
  }

  static Future<NewUserAccount?> signUp(
      {required String name, required String email, required String password}) async{
    isLoading.value = true;
    try{
      Response response = await Dio().post(
          'http://restapi.adequateshop.com/api/authaccount/registration',
          data: jsonEncode({
            'name': name,
            'email': email,
            'password': password
          })
      );
      print(response);
      Map data = response.data['data'];
      NewUserAccount newAccount = NewUserAccount(
        id: data['Id'],
        name: data['Name'],
        email: data['Email'],
        token: data['Token'],
      );

      Database.prefs.setString('name', name);
      Database.prefs.setString('email', email);
      Database.prefs.setString('password', password);
      Database.prefs.setString('token', newAccount.token);
      NewUserAccount.currentAccount = newAccount;

      Get.offAll( NavBar());
    }
    catch (e){
      debugPrint('error $e');
    }
    isLoading.value = false;
    return null;
    // print(Map.from(res.data));
  }
}