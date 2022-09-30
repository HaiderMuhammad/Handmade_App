import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:front/api_call/product_api/api_methods.dart';
import 'package:front/navBar.dart';
import 'package:front/network_model/all_carts.dart';
import 'package:front/network_model/all_products.dart';
import 'package:front/network_model/profile.dart';
import 'package:front/register/login_page.dart';
import 'package:front/screens/home_page/home.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'services/local_database/shared_preferences.dart';

Future<void> main() async{

  WidgetsFlutterBinding.ensureInitialized();
  Database.prefs = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  late List<ProductsModel>? productModel = [];
  late List<CartsModel>? cartModel = [];
  late List<ProfileModel>? profileModel = [];
  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    productModel = (await ApiServices().getProducts());
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));

    cartModel = (await ApiServices().getCart());
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));

    profileModel = (await ApiServices().getProfile());
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));

  }
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
              )
          )

      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                NavBar()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Scaffold(
          body: Center(
            child: Text(
              'Handmade',
              style: GoogleFonts.skranji(
                color: const Color(0xff67C4A7),
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),

            ),
          ),
        )
    );
  }

}
