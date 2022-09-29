import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:front/api_call/cart_api/cart_api.dart';
import 'package:front/api_call/product_api/api_methods.dart';
import 'package:front/navBar.dart';
import 'package:front/network_model/all_carts.dart';
import 'package:front/network_model/all_products.dart';
import 'package:front/register/login_page.dart';
import 'package:front/services/local_database/shared_preferences.dart';
import 'package:get/get.dart' hide Response ;
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async{

  WidgetsFlutterBinding.ensureInitialized();
  Database.prefs = await SharedPreferences.getInstance();
  runApp(const Main());
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {

  late List<ProductsModel>? productModel = [];
  late List<CartsModel>? cartModel = [];
  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    productModel = (await ApiServices().getUsers());
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));

    cartModel = (await ApiServices().getCart());
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));

  }
  @override
  Widget build(BuildContext context) {
    ApiServices().getUsers();
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
      home: NavBar(),
    );
  }
}

