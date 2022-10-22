import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/tests/test1.dart';


class Test2 extends StatelessWidget {
  const Test2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('second page'),
            ElevatedButton(
                onPressed: () {
                  // Get.toNamed('/test2');
                  Get.back();
                },
                child: const Text('Move'))
          ],
        ),
      ),
    );
  }
}
