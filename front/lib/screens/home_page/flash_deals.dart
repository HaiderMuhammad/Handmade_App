import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:front/api_call/constants.dart';
import 'package:front/api_call/product_api/api_methods.dart';
import 'package:front/network_model/all_products.dart' hide Image;
import 'package:front/screens/details_page/details.dart';

class FlashDealView extends StatefulWidget {
  const FlashDealView({Key? key}) : super(key: key);

  @override
  State<FlashDealView> createState() => _FlashDealViewState();
}
class _FlashDealViewState extends State<FlashDealView> {
  late List<ProductsModel>? productModel = [];

  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    productModel = (await ApiServices().getProducts());
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }
  @override
  Widget build(BuildContext context) {
    return productModel == null || productModel!.isEmpty
    ? const Center(
      child: CupertinoActivityIndicator(),
    )
    :
        ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: productModel!.length,
            itemBuilder: (context, index){
              return GestureDetector(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder:(context) =>
                          DetailsPage(
                            id: productModel![index].id.toString(),
                            productName: productModel![index].name.toString(),
                            price: productModel![index].price.toString(),
                            description: productModel![index].description.toString(),
                            image: "http://192.168.1.125:8000${productModel![index].image![0].image}",
                          )
                      )
                  );
                },
                child: Container(
                  width: 220,
                  height: 100,
                  margin: const EdgeInsets.only(right: 8),
                  padding: const EdgeInsets.only(left: 3,top: 3,bottom: 3),
                  decoration: BoxDecoration(
                    color: Colors.accents.elementAt(Random().nextInt(Colors.accents.length)).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1.5, color: const Color(0xffF0F2F1)),
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Image.network("$baseUrl${productModel![index].image![0].image}",
                          height: 96,
                          width: 64,
                          fit: BoxFit.fitWidth,),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(productModel![index].name.toString(),
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Text(productModel![index].price.toString(),
                              style: const TextStyle(
                                  fontSize: 12,
                                  decoration: TextDecoration.lineThrough
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(productModel![index].newPrice.toString(),
                              style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }
        );
  }
}
