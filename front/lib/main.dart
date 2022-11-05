import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:front/binding/all_binding.dart';
import 'package:front/navBar.dart';
import 'package:front/register/signUp_page.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AppBindings(),
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
              ))),
      home: const MyHomePage(),
    );
  }
}

String finalToken = '';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future getToken() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    var token = pref.getString('token');
    setState(() {
      finalToken = token!;
    });
  }

  @override
  void initState() {
    super.initState();
    getToken().whenComplete(() async {
      Timer(const Duration(seconds: 2),
          () => Get.to(() => finalToken.isEmpty ? SignUpPage() : NavBar()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Scaffold(
          body: Center(
              child: Lottie.asset("assets/images/hi.json",
                  width: double.infinity, height: 400, repeat: true)),
        ));
  }
}
