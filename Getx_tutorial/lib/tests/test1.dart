import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_tutorial/tests/test2.dart';

class Test1 extends StatelessWidget {
  const Test1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('first page'),
            ElevatedButton(
                onPressed: () {
                  // Get.toNamed('/test1');
                  Get.to(() => const Test2());
                },
                child: const Text('Move'))
          ],
        ),
      ),
    );
  }
}