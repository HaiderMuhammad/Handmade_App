// import 'package:flutter/material.dart';
// import 'package:front/controllers/profile_controller.dart';
// import 'package:get/get.dart';
//
// class ProfileView extends GetView<ProfileController> {
//   const ProfileView({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Obx(() =>
//         ListView.builder(
//           scrollDirection: Axis.vertical,
//           itemCount: 5,
//           itemBuilder: (context, index){
//             return Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   // Text(controller.profileList![index].phone_number.toString(),
//                   //   style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.red),
//                   // ),
//                   const Text('Haider',
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.red),
//                   ),
//                   Container(
//                     height: 40,
//                     width: 40,
//                     color: Colors.red,
//                   )
//                 ],
//               ),
//             );
//           },
//         )
//     );
//   }
// }
