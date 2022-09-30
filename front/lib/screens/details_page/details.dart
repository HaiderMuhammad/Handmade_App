import 'package:flutter/material.dart';
import 'package:front/api_call/product_api/api_methods.dart';
import 'package:front/screens/details_page/product_color.dart';
import 'package:get/get.dart';


class DetailsPage extends StatelessWidget {
  DetailsPage({Key? key, required this.price, required this.description, required this.productName, required this.id, required this.image}) : super(key: key);

  ApiServices api = ApiServices();
  final String id;
  final String productName;
  final String price;
  final String description;
  final String image;

  final RxBool _isLike = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text('Details Products',
            style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w700),),
        ),
        body: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 250,
                child: Image.network(image,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          productName,
                          style: const TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                              color: Colors.black87,
                              height: 2.5
                          ),
                        ),

                    Obx((){
                      return IconButton(
                        padding: const EdgeInsets.only(top: 20),
                        color: _isLike.value ? Colors.redAccent
                            : Colors.grey,
                        icon: const Icon(Icons.favorite_rounded, size: 25,),
                        onPressed: (){
                          _isLike.value = !_isLike.value;
                          api.AddToFav(id);
                        },
                      );
                    }
                    ),
                      ],
                    ),
                  Text(
                    price,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Color(0xff67C4A7),
                    ),
                  ),
                    const SizedBox(height: 10,),
                    const Divider(height: 3, color: Colors.grey,),
                    const ProductColors(),
                    const Divider(height: 3, color: Colors.grey,),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Description of Product',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black87,
                              height: 2.5
                          ),
                        ),
                        Text(
                          description,
                          style: const TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                              color: Colors.black87,
                              height: 1.8
                          ),
                        ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
                  child: MaterialButton(
                    onPressed: () {
                      api.AddToCart(id);
                    },
                    height: 55,
                    minWidth: double.infinity,
                    color: const Color(0xff67C4A7),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: const Text("Add to Cart",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        )
                    ),
                  ),
                ),
                      ],
                    )
                  ],
                ),
              )
            ]
        )
    );
  }
}


// class DetailsPage extends StatefulWidget {
//   DetailsPage({Key? key, required this.id, required this.productName, required this.price, required this.description, required this.image}) : super(key: key);
//
//   ApiServices api = ApiServices();
//   final String id;
//   final String productName;
//   final String price;
//   final String description;
//   final String image;
//   bool _isLike = false;
//
//   @override
//   State<DetailsPage> createState() => _DetailsPageState();
// }
//
// class _DetailsPageState extends State<DetailsPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//           title: const Text('Details Products',
//             style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w700),),
//         ),
//         body: Column(
//             children: [
//               SizedBox(
//                 width: double.infinity,
//                 height: 250,
//                 child: Image.network(widget.image,
//                   fit: BoxFit.fitWidth,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           widget.productName,
//                           style: const TextStyle(
//                               fontWeight: FontWeight.normal,
//                               fontSize: 15,
//                               color: Colors.black87,
//                               height: 2.5
//                           ),
//                         ),
//                   IconButton(
//                     padding: const EdgeInsets.only(top: 20),
//                     color: widget._isLike? Colors.redAccent
//                         : Colors.grey,
//                     icon: const Icon(Icons.favorite_rounded, size: 25,),
//                     onPressed: (){
//                       widget._isLike = !widget._isLike;
//                       widget.api.AddToFav(widget.id);
//                     },
//                   ),
//                       ],
//                     ),
//                     Text(
//                       widget.price,
//                       style: const TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 22,
//                         color: Color(0xff67C4A7),
//                       ),
//                     ),
//                     const SizedBox(height: 10,),
//                     const Divider(height: 3, color: Colors.grey,),
//                     const ProductColors(),
//                     const Divider(height: 3, color: Colors.grey,),
//
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Text(
//                           'Description of Product',
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 18,
//                               color: Colors.black87,
//                               height: 2.5
//                           ),
//                         ),
//                         Text(
//                           widget.description,
//                           style: const TextStyle(
//                               fontWeight: FontWeight.normal,
//                               fontSize: 12,
//                               color: Colors.black87,
//                               height: 1.8
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
//                           child: MaterialButton(
//                             onPressed: () {
//                               widget.api.AddToCart(widget.id);
//                             },
//                             height: 55,
//                             minWidth: double.infinity,
//                             color: const Color(0xff67C4A7),
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(5)
//                             ),
//                             child: const Text("Add to Cart",
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 20
//                                 )
//                             ),
//                           ),
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//               )
//             ]
//         )
//     );
//   }
// }




