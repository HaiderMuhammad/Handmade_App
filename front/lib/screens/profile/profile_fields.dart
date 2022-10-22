// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:front/api_call/product_api/api_methods.dart';
// import 'package:front/network_model/profile.dart';
//
// class ContainerField extends StatefulWidget {
//   const ContainerField({Key? key}) : super(key: key);
//
//   @override
//   State<ContainerField> createState() => _ContainerFieldState();
// }
//
// class _ContainerFieldState extends State<ContainerField> {
//
//   // a =apiServices.profileModel();
// ApiServices apiServices=ApiServices();
//   @override
//   void initState() {
//     super.initState();
//     _getData();
//   }
//   void _getData() async {
//     apiServices.getProfile();
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // return apiServices.profileModelModels == null || apiServices.profileModelModels!.isEmpty
//     //     ? const Center(
//     //   child: CupertinoActivityIndicator(),
//     // )
//     //     : ListView.builder(
//     //     shrinkWrap: true,
//     //     scrollDirection: Axis.vertical,
//     //     itemCount: apiServices.profileModelModels!.length,
//     //     itemBuilder: (context, index){
//     //       return Padding(
//     //         padding: const EdgeInsets.only(top: 15.0, right: 20, left: 20),
//     //         child: Column(
//     //           crossAxisAlignment: CrossAxisAlignment.start,
//     //           children: [
//     //             const Text(
//     //               'First Name',
//     //               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
//     //             ),
//     //             Container(
//     //                 padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
//     //                 margin: const EdgeInsets.symmetric(vertical: 10),
//     //                 decoration: BoxDecoration(
//     //                     color: Colors.white,
//     //                     borderRadius: BorderRadius.circular(5),
//     //                     border: Border.all(width: 1, color: Colors.grey)
//     //                 ),
//     //                 child: TextField(
//     //                   textInputAction: TextInputAction.next,
//     //                   decoration: InputDecoration(
//     //                     border: InputBorder.none,
//     //                     hintText: apiServices.profileModelModels![index].first_name,
//     //                     hintStyle: const TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.grey),
//     //                   ),
//     //                 )
//     //             ),
//     //
//     //             const Text(
//     //               'Last Name',
//     //               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
//     //             ),
//     //             Container(
//     //                 padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
//     //                 margin: const EdgeInsets.symmetric(vertical: 10),
//     //                 decoration: BoxDecoration(
//     //                     color: Colors.white,
//     //                     borderRadius: BorderRadius.circular(5),
//     //                     border: Border.all(width: 1, color: Colors.grey)
//     //                 ),
//     //                 child: TextField(
//     //                   textInputAction: TextInputAction.next,
//     //                   decoration: InputDecoration(
//     //                     border: InputBorder.none,
//     //                     hintText: apiServices.profileModelModels![index].last_name,
//     //                     hintStyle: const TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.grey),
//     //                   ),
//     //                 )
//     //             ),
//     //
//     //             const Text(
//     //               'Email',
//     //               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
//     //             ),
//     //             Container(
//     //                 padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
//     //                 margin: const EdgeInsets.symmetric(vertical: 10),
//     //                 decoration: BoxDecoration(
//     //                     color: Colors.white,
//     //                     borderRadius: BorderRadius.circular(5),
//     //                     border: Border.all(width: 1, color: Colors.grey)
//     //                 ),
//     //                 child: TextField(
//     //                   textInputAction: TextInputAction.next,
//     //                   decoration: InputDecoration(
//     //                     border: InputBorder.none,
//     //                     hintText: apiServices.profileModelModels![index].email,
//     //                     hintStyle: const TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.grey),
//     //                   ),
//     //                 )
//     //             ),
//     //
//     //             const Text(
//     //               'Phone Number',
//     //               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
//     //             ),
//     //             Container(
//     //                 padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
//     //                 margin: const EdgeInsets.symmetric(vertical: 10),
//     //                 decoration: BoxDecoration(
//     //                     color: Colors.white,
//     //                     borderRadius: BorderRadius.circular(5),
//     //                     border: Border.all(width: 1, color: Colors.grey)
//     //                 ),
//     //                 child: TextField(
//     //                   textInputAction: TextInputAction.next,
//     //                   decoration: InputDecoration(
//     //                     border: InputBorder.none,
//     //                     hintText: apiServices.profileModelModels![index].phone_number,
//     //                     hintStyle: const TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.grey),
//     //                   ),
//     //                 )
//     //             ),
//     //
//     //             const Text(
//     //               'Address',
//     //               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
//     //             ),
//     //             Container(
//     //                 padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
//     //                 margin: const EdgeInsets.symmetric(vertical: 10),
//     //                 decoration: BoxDecoration(
//     //                     color: Colors.white,
//     //                     borderRadius: BorderRadius.circular(5),
//     //                     border: Border.all(width: 1, color: Colors.grey)
//     //                 ),
//     //                 child: TextField(
//     //                   textInputAction: TextInputAction.next,
//     //                   decoration: InputDecoration(
//     //                     border: InputBorder.none,
//     //                     hintText: apiServices.profileModelModels![index].address,
//     //                     hintStyle: const TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.grey),
//     //                   ),
//     //                 )
//     //             ),
//     //           ],
//     //         ),
//     //       );
//     //     }
//     // );
//
// //
// // debugPrint('test  ${apiServices.profileModel.first_name}');
//     return
//       // apiServices.profileModel.first_name!.isEmpty?  const Center(child: CircularProgressIndicator()):
//       Builder(
//        builder: (context){
//         return Padding(
//           padding: const EdgeInsets.only(top: 15.0, right: 20, left: 20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Text(
//                 'First Name',
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
//               ),
//               Container(
//                   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
//                   margin: const EdgeInsets.symmetric(vertical: 10),
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(5),
//                       border: Border.all(width: 1, color: Colors.grey)
//                   ),
//                   child: TextField(
//                     textInputAction: TextInputAction.next,
//                     decoration: InputDecoration(
//                       border: InputBorder.none,
//                       hintText: apiServices.profileModel.first_name,
//                       hintStyle: const TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.grey),
//                     ),
//                   )
//               ),
//
//               const Text(
//                 'Last Name',
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
//               ),
//               Container(
//                   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
//                   margin: const EdgeInsets.symmetric(vertical: 10),
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(5),
//                       border: Border.all(width: 1, color: Colors.grey)
//                   ),
//                   child: TextField(
//                     textInputAction: TextInputAction.next,
//                     decoration: InputDecoration(
//                       border: InputBorder.none,
//                       hintText: apiServices.profileModel.last_name,
//                       hintStyle: const TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.grey),
//                     ),
//                   )
//               ),
//
//               const Text(
//                 'Email',
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
//               ),
//               Container(
//                   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
//                   margin: const EdgeInsets.symmetric(vertical: 10),
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(5),
//                       border: Border.all(width: 1, color: Colors.grey)
//                   ),
//                   child: TextField(
//                     textInputAction: TextInputAction.next,
//                     decoration: InputDecoration(
//                       border: InputBorder.none,
//                       hintText: apiServices.profileModel.email,
//                       hintStyle: const TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.grey),
//                     ),
//                   )
//               ),
//
//               const Text(
//                 'Phone Number',
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
//               ),
//               Container(
//                   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
//                   margin: const EdgeInsets.symmetric(vertical: 10),
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(5),
//                       border: Border.all(width: 1, color: Colors.grey)
//                   ),
//                   child: TextField(
//                     textInputAction: TextInputAction.next,
//                     decoration: InputDecoration(
//                       border: InputBorder.none,
//                       hintText: apiServices.profileModel.phone_number,
//                       hintStyle: const TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.grey),
//                     ),
//                   )
//               ),
//
//               const Text(
//                 'Address',
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
//               ),
//               Container(
//                   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
//                   margin: const EdgeInsets.symmetric(vertical: 10),
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(5),
//                       border: Border.all(width: 1, color: Colors.grey)
//                   ),
//                   child: TextField(
//                     textInputAction: TextInputAction.next,
//                     decoration: InputDecoration(
//                       border: InputBorder.none,
//                       hintText: apiServices.profileModel.address,
//                       hintStyle: const TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.grey),
//                     ),
//                   )
//               ),
//             ],
//           ),
//         );;
//       },
//     );
//   }
// }
