import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:front/api_call/constants.dart';
import 'package:front/models/account/signInModel.dart';
import 'package:front/navBar.dart';
import 'package:front/screens/home_page/home.dart';
import 'package:front/services/local_database/shared_preferences.dart';
import 'package:get/get.dart' hide Response;
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';



class AuthService{



 // static Future<UserAccount?> signIn({required String email, required String password}) async{
 //  try{
 //   Response res = await Dio().post(
 //       '$baseUrl/api/auth/signup',
 //       data: jsonEncode({
 //        "email": email,
 //        "password": password,
 //       })
 //   );
 //   Map data = res.data['data'];
 //   return UserAccount(
 //       email: data['Email'],
 //       token: data['token'],
 //   );
 //  }
 //  catch (e){
 //   return null;
 //  }
 // }
}

// Future<NewUserAccount?> signUp() async{
// var headers = {
//  'Content-Type': 'application/json'
// };
// var request = http.Request('POST', Uri.parse('$baseUrl/api/auth/signup'));
//  request.body = json.encode({
//
//      "first_name": "string",
//      "last_name": "string",
//      "email": "user@example.com",
//      "password1": "string",
//      "password2": "string",
//      "phone_number": "string",
//      "address": "string"
//
//  });
// request.headers.addAll(headers);
//
// http.StreamedResponse response = await request.send();
//
// if (response.statusCode == 200) {
//  print(await response.stream.bytesToString());
//
//  Get.offAll( HomePage());
// }
// else {
// print(response.reasonPhrase);
// }
// return null;
// // print(Map.from(res.data));
// }

Future signUp(
    String first_name, String last_name, String email, String password1,
    String password2, String phone_number, String address,
    ) async {
  http.Response response;
  try {
    var url = Uri.parse('$baseUrl/api/auth/signup');

    response = await http.post(url,
        headers: {
          "Content-Type": "application/json",
        },
      body: jsonEncode({
          "first_name": first_name,
          "last_name": last_name,
          "email": email,
          "password1": password1,
          "password2": password2,
          "phone_number": phone_number,
          "address": address
      })
    );
    Get.to(()=> NavBar());
    print(response);
    print(response.body);
  } catch (error) {
    print(error.toString());
  }
}
Future login(
    String email, String password) async {

  http.Response response;
  try {
    if( email.isNotEmpty && password.isNotEmpty){
      var url = Uri.parse('$baseUrl/api/auth/signin');

      response = await http.post(url,
          headers: {
            "Content-Type": "application/json",
          },
          body: jsonEncode({
            "email": email,
            "password": password
          }));
      if(response.statusCode == 200) {
        var responseBody = jsonDecode(response.body)['token'];
        Get.to(()=> NavBar());
        var token = responseBody["access_token"];
        print(token);
        Database.saveToken(token);

      }else{
        print('invalid');
      }
    }
  } catch (error) {
    print(error.toString());
  }
}
// Future<UserAccount?> login(String email, String password) async{
//  var headers = {
//    'Content-Type': 'application/json'
//  };
//  var request = http.Request('POST', Uri.parse('$baseUrl/api/auth/signin'));
//  request.body = json.encode({
//   "email": email,
//   "password": password
//  });
//  request.headers.addAll(headers);
//
//  http.StreamedResponse response = await request.send();
//
//  if (response.statusCode == 200) {
//   Get.to(() => NavBar());
//  }
//  else {
//   print(response.reasonPhrase);
//  }
//  return null;
//
// }


// void login2({required String email, required String password}) async{
//   if( email.isEmpty && password.isEmpty){
//     var response = await http.post(Uri.parse('http://192.168.1.125:8000/api/auth/signin'),
//         body: ({
//           "email": email,
//           "password": password
//         })
//     );
//     if(response.statusCode == 200){
//       final body = jsonDecode(response.body);
//       print("Login Token" + body["token"]);
//
//       SharedPreferences pref = await SharedPreferences.getInstance();
//       await pref .setString('login', body['token']);
//       Get.to(() => NavBar());
//     }
//     else{
//       print("Invalid");
//     }
//   }else{
//     print(' Blank value found');
//   }
// }



