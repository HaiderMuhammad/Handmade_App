// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class AlertButton extends StatelessWidget {
//   const AlertButton({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 100,
//       width: MediaQuery.of(context).size.width,
//       margin: const EdgeInsets.symmetric(
//           horizontal: 20,
//           vertical: 20
//       ),
//       child: Column(
//         children: [
//           Text("Choose profile image",
//             style: GoogleFonts.roboto(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold
//             ),
//           ),
//           const SizedBox(height: 20,),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               MaterialButton(
//                   onPressed: (){
//                     getImage(ImageSource.camera);
//                   },
//                   child: Row(
//                     children: [
//                       const Icon(Icons.camera_enhance),
//                       const SizedBox(width: 10,),
//                       Text("Camera",
//                         style: GoogleFonts.roboto(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 15
//                         ),
//                       )
//                     ],
//                   )
//               ),
//               Container(
//                 width: 2,
//                 height: 30,
//                 margin: const EdgeInsets.only(left: 25,right: 25),
//                 color: Colors.black,
//               ),
//               MaterialButton(
//                   onPressed: (){
//                     getImage(ImageSource.gallery);
//                   },
//                   child: Row(
//                     children: [
//                       const Icon(Icons.browse_gallery,),
//                       const SizedBox(width: 10,),
//                       Text("Gallery",
//                         style: GoogleFonts.roboto(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 15
//                         ),
//                       )
//                     ],
//                   )
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
