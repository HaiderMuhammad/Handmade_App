import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:front/models/account/signInModel.dart';
import 'package:front/models/account/signUpModel.dart';
import 'package:front/navBar.dart';
import 'package:front/screens/home_page/home.dart';
import 'package:front/services/local_database/shared_preferences.dart';
import 'package:get/get.dart' hide Response;
import 'package:http/http.dart' as http;



class AuthService{
 static  RxBool isLoading = false.obs;

}

Future<NewUserAccount?> signUp(
{
 required String name, required String email,
 required String password1, required String password2,
 required String phone, required String address
}) async{
var headers = {
 'Content-Type': 'application/json'
};
var request = http.Request('POST', Uri.parse('http://192.168.1.105:8000/api/auth/signup'));
 request.body = json.encode({
   "first_name": name,
   "email": email,
   "password1": password1,
   "password2": password2,
   "phone": phone,
   "address": address,
 });
request.headers.addAll(headers);

http.StreamedResponse response = await request.send();

if (response.statusCode == 200) {
 print(await response.stream.bytesToString());

 Get.offAll( const HomePage());
}
else {
print(response.reasonPhrase);
}
return null;
// print(Map.from(res.data));
}


Future<UserAccount?> login(String email, String password) async{
 var headers = {
  'Content-Type': 'application/json'
 };
 var request = http.Request('POST', Uri.parse('http://192.168.1.105:8000/api/auth/signin'));
 request.body = json.encode({
  "email": email,
  "password": password
 });
 request.headers.addAll(headers);

 http.StreamedResponse response = await request.send();

 if (response.statusCode == 200) {
  print(await response.stream.bytesToString());
  Database.prefs.setString('email', email);
  Get.offAll( NavBar());

 }
 else {
  print(response.reasonPhrase);
 }
 return null;
}




