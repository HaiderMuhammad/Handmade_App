import 'dart:convert';
import 'package:front/api_call/constants.dart';
import 'package:front/models/account/signInModel.dart';
import 'package:front/models/account/signUpModel.dart';
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

// Future<NewUserAccount?> signUp(
// {
//  required String name, required String email,
//  required String password1, required String password2,
//  required String phone, required String address
// }) async{
// var headers = {
//  'Content-Type': 'application/json'
// };
// var request = http.Request('POST', Uri.parse('http://192.168.1.105:8000/api/auth/signup'));
//  request.body = json.encode({
//    "first_name": name,
//    "email": email,
//    "password1": password1,
//    "password2": password2,
//    "phone": phone,
//    "address": address,
//  });
// request.headers.addAll(headers);
//
// http.StreamedResponse response = await request.send();
//
// if (response.statusCode == 200) {
//  print(await response.stream.bytesToString());
//
//  Get.offAll( const HomePage());
// }
// else {
// print(response.reasonPhrase);
// }
// return null;
// // print(Map.from(res.data));
// }


Future<UserAccount?> login(String email, String password) async{
 var headers = {
   'Content-Type': 'application/json'
 };
 var request = http.Request('POST', Uri.parse('$baseUrl/api/auth/signin'));
 request.body = json.encode({
  "email": email,
  "password": password
 });
 request.headers.addAll(headers);

 http.StreamedResponse response = await request.send();

 if (response.statusCode == 200) {
  Get.to(() => NavBar());
 }
 else {
  print(response.reasonPhrase);
 }
 return null;

}


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



