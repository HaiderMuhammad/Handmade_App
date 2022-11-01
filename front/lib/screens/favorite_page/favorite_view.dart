import 'package:flutter/material.dart';
import 'package:front/api_call/constants.dart';
import 'package:front/controllers/favorite_controller.dart';
import 'package:front/screens/favorite_page/empty_fav_page.dart';
import 'package:get/get.dart';


class FavoriteView extends GetView<FavoriteController> {
  const FavoriteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() =>
        controller.favoriteList.isEmpty ? const EmptyFavPage()
            :
        ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: controller.favoriteList.length,
            itemBuilder: (context, index){
              return Padding(
                  padding: const EdgeInsets.only(top: 35, left: 15, right: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(6.0),
                            child: Image.network("$baseUrl${controller.favoriteList[index].product!.images![0].image}",
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
                                      controller.favoriteList[index].product!.name.toString(),
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          height: 0.1
                                      ),
                                    ),
                                    IconButton(
                                        onPressed: () => controller.deleteFavoriteCart(controller.favoriteList[index].product!.id.toString()),
                                        padding: const EdgeInsets.only(top: 20),
                                        icon: const Icon(Icons.delete_forever,
                                          color: Color(0xff939393),)
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      controller.favoriteList[index].product!.price.toString(),
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff67C4A7),


                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding:EdgeInsets.only(right: 10, left: 5, top: 20),
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
