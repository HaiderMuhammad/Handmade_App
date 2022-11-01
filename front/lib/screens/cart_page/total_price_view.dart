// import 'package:flutter/material.dart';
// import 'package:front/controllers/total_price_controller.dart';
// import 'package:get/get.dart';
//
// class TotalPriceView extends GetView<TotalPriceController> {
//   const TotalPriceView({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Obx(() =>
//         controller.totalPriceList.isEmpty? const Text('data')
//             :
//             ListView.builder(
//               itemCount: controller.totalPriceList.length,
//               itemBuilder: (context, index){
//                 return Text(controller.totalPriceList[index].orderTotal.toString());
//               },
//             )
//     );
//   }
// }
