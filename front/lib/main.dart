import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:front/screens/cart/cart_page.dart';
import 'package:get/get.dart';
Future<void> main() async{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Handmade App',
      theme: ThemeData(
        backgroundColor: const Color(0xffFFFFFF),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          color: Color(0xffFFFFFF),
          iconTheme: IconThemeData(color: Colors.black),
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
            statusBarColor: Colors.transparent,
        ),
        ),
      ),
      home: const CartPage(),
    );
  }
}