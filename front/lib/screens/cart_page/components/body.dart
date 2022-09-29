// import 'package:flutter/material.dart';
// import 'package:flutter_slidable/flutter_slidable.dart';
// import 'package:front/models/product.dart';
//
// import 'cart_item.dart';
//
// class Body extends StatefulWidget {
//   const Body({Key? key}) : super(key: key);
//
//   @override
//   State<Body> createState() => _BodyState();
// }
//
// class _BodyState extends State<Body> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
//       child: ListView.builder(
//           itemCount: Product.products.length,
//           itemBuilder: (BuildContext context, int index) {
//             return Padding(
//               padding: const EdgeInsets.symmetric(vertical: 1),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(4.0),
//                 child: Slidable(
//                   key: Key(
//                     Product.products[index].id.toString(),
//                   ),
//                   startActionPane: ActionPane(
//                     motion: const ScrollMotion(),
//                     dismissible: DismissiblePane(onDismissed: () {}),
//                     children: [
//                       SlidableAction(
//                         onPressed: ((context) {
//                           setState(() {});
//                         }),
//                         icon: Icons.favorite,
//                         backgroundColor: Colors.blueAccent,
//                         foregroundColor: Colors.white,
//                         label: 'Add to favorite',
//                       )
//                     ],
//                   ),
//                   endActionPane: ActionPane(
//                     motion: const ScrollMotion(),
//                     dismissible: DismissiblePane(onDismissed: () {
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(
//                           behavior: SnackBarBehavior.floating,
//                           content: Text(
//                               '${Product.products[index].productName} dismissed'),
//                         ),
//                       );
//                       setState(() {
//                         Product.products.removeAt(index);
//                       });
//                     }),
//                     children: [
//                       SlidableAction(
//                         onPressed: ((context) {
//                           setState(() {
//                             Product.products.removeAt(index);
//                           });
//                           ScaffoldMessenger.of(context).showSnackBar(
//                             SnackBar(
//                               behavior: SnackBarBehavior.floating,
//                               content: Text(
//                                   '${Product.products[index].productName} dismissed'),
//                             ),
//                           );
//                         }),
//                         icon: Icons.delete,
//                         backgroundColor: const Color(0xFFFE4A49),
//                         foregroundColor: Colors.white,
//                         label: 'Delete',
//                       )
//                     ],
//                   ),
//                   child: CartItem(
//                     product: Product.products[index],
//                   ),
//                 ),
//               ),
//             );
//           }),
//     );
//   }
// }