import 'package:flutter/material.dart';
import 'package:front/controllers/cart_controller.dart';
import 'package:get/get.dart';

import '../../network_model/all_carts.dart' hide Image;


// class CartView extends StatefulWidget {
//   const CartView({Key? key}) : super(key: key);
//
//   @override
//   State<CartView> createState() => _CartViewState();
// }
//
// class _CartViewState extends State<CartView> {
//
//   late List<CartsModel>? cartModel = [];
//   ApiServices api = ApiServices();
//
//   @override
//   void initState() {
//     super.initState();
//     _getData();
//   }
//   void _getData() async {
//     cartModel = (await ApiServices().getCart());
//     Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
//   }
//   @override
//   Widget build(BuildContext context) {
//     return cartModel == null || cartModel!.isEmpty
//         ? const Center(
//       child: CupertinoActivityIndicator(),
//     )
//         :
//     ListView.builder(
//         scrollDirection: Axis.vertical,
//         shrinkWrap: true,
//         itemCount: cartModel!.length,
//         itemBuilder: (context, index){
//           return Padding(
//             padding: const EdgeInsets.only(top: 5, left: 15, right: 15),
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//                     ClipRRect(
//                       borderRadius: BorderRadius.circular(6.0),
//                       child: Image.network("$baseUrl${cartModel![index].product!.images![0].image}",
//                         width: 70,
//                         height: 60,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     const SizedBox(
//                       width: 10,
//                     ),
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text(
//                                 cartModel![index].product!.name.toString(),
//                                 style: const TextStyle(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w600,
//                                     height: 2.5
//                                 ),
//                               ),
//                               IconButton(
//                                   onPressed: (){
//                                     setState(() {
//                                       api.deleteCart(cartModel![index].id);
//                                     });
//                                   },
//                                   padding: const EdgeInsets.only(top: 18),
//                                   icon: const Icon(Icons.delete_forever,
//                                     color: Color(0xff939393),)
//                               ),
//                             ],
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text(
//                                 cartModel![index].product!.price.toString(),
//                                 style: const TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w600,
//                                   color: Color(0xff67C4A7),
//
//                                 ),
//                               ),
//                               Row(
//                                 children: [
//                                   IconButton(
//                                     onPressed: () {
//                                       api.reduceItem(cartModel![index].id);
//                                       setState(() {
//                                         api.getCart();
//                                       });
//                                     },
//                                     icon: const Icon(
//                                       Icons.remove_circle_outline_rounded,
//                                       color: Color(0xff939393),
//                                     ),
//                                   ),
//                                   Text(
//                                     cartModel![index].itemQty.toString(),
//                                     style: const TextStyle(
//                                       fontSize: 14,
//                                     ),
//                                   ),
//                                   IconButton(
//                                     onPressed: () {
//                                       api.increaseItem(cartModel![index].id);
//                                       setState(() {
//                                         api.getCart();
//                                       });
//                                     },
//                                     icon: const Icon(
//                                       Icons.add_circle_outline_outlined,
//                                       color: Color(0xff939393),
//                                     ),
//                                   ),
//                                 ],
//                               )
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 const Padding(
//                   padding:EdgeInsets.only(right: 15, left: 5, top: 8),
//                   child: Divider(thickness: 0.4, color: Colors.grey,),
//                 )
//               ],
//             )
//           );
//         }
//     );
//   }
// }


class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() =>
        ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: controller.cartList.length,
            itemBuilder: (context, index){
              return Padding(
                  padding: const EdgeInsets.only(top: 5, left: 15, right: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(6.0),
                            child: Image.network("http://192.168.1.125:8000${controller.cartList[index].product!.images![0].image}",
                              width: 70,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      controller.cartList[index].product!.name.toString(),
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          height: 2.5
                                      ),
                                    ),
                                    IconButton(
                                        onPressed: () => controller.deleteCart(controller.cartList[index].id.toString()),
                                        padding: const EdgeInsets.only(top: 18),
                                        icon: const Icon(Icons.delete_forever,
                                          color: Color(0xff939393),)
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      controller.cartList[index].product!.price.toString(),
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff67C4A7),

                                      ),
                                    ),
                                    Row(
                                      children: [
                                        IconButton(
                                          onPressed: () => controller.reduceItem(controller.cartList[index].id.toString()),
                                          icon: const Icon(
                                            Icons.remove_circle_outline_rounded,
                                            color: Color(0xff939393),
                                          ),
                                        ),
                                        Text(
                                          controller.cartList[index].itemQty.toString(),
                                          style: const TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () => controller.increse(controller.cartList[index].id.toString()),
                                          icon: const Icon(
                                            Icons.add_circle_outline_outlined,
                                            color: Color(0xff939393),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding:EdgeInsets.only(right: 15, left: 5, top: 8),
                        child: Divider(thickness: 0.4, color: Colors.grey,),
                      )
                    ],
                  )
              );
            }
        )
    );
  }
}
