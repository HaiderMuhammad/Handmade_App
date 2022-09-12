// import 'package:flutter/material.dart';
// import 'package:front/register/login_page.dart';
// import 'package:front/services/auth_service/auth.dart';
// import 'package:front/services/local_database/shared_preferences.dart';
// import 'package:get/get.dart';
//
// class Wrapper extends StatelessWidget {
//   const Wrapper({Key? key}) : super(key: key);
//
//   login() {
//     // await Future.delayed(const Duration(seconds: 2));
//     try{
//       String? email = Database.prefs.getString('email');
//       String? password = Database.prefs.getString('password');
//
//       if(email != null && password != null){
//         AuthService.signIn(email: email, password: password);
//       }
//       else{
//         Get.offAll(LoginPage());
//       }
//     }
//     catch(e){
//       Get.offAll(LoginPage());
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     WidgetsBinding.instance.addPostFrameCallback((timeStamp) => login());
//     return const Scaffold(
//       body: Center(
//         child: CircularProgressIndicator(),
//       ),
//     );
//   }
// }
