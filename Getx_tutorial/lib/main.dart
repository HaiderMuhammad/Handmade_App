import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_tutorial/tests/test1.dart';

import 'tests/test2.dart';



void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/test1',
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.downToUp,
      smartManagement: SmartManagement.full,
      getPages: [
        GetPage(name: '/test1', page: ()=> const Test1()),
        GetPage(name: '/test2', page: ()=> const Test2()),
      ],
    );
  }
}
