import 'package:flutter/material.dart';
import 'package:front/controllers/profile_controller.dart';
import 'package:get/get.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() =>
        ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: controller.profileList!.length,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Text(controller.profileList![index].first_name.toString(),
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.red),
                  ),
                  const Text('Haider',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.red),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    color: Colors.red,
                  )
                ],
              ),
            );
          },
        )
    );
  }
}
