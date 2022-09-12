import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:front/register/login_page.dart';
import 'package:front/services/local_database/shared_preferences.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';


Future<void> main() async{

  WidgetsFlutterBinding.ensureInitialized();
  Database.prefs = await SharedPreferences.getInstance();
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
      home: LoginPage(),
    );
  }
}
