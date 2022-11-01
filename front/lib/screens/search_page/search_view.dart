import 'dart:math';
import 'package:flutter/material.dart';
import 'package:front/api_call/constants.dart';
import 'package:front/controllers/search_controller.dart';
import 'package:front/screens/details_page/details.dart';
import 'package:get/get.dart';

class SearchView extends GetView<SearchController> {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: controller.searchList.length,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GestureDetector(
                  onTap: () => Get.to(() => DetailsPage(
                      id: controller.searchList[index].id.toString(),
                      productName: controller.searchList[index].name.toString(),
                      price: controller.searchList[index].price.toString(),
                      description:
                          controller.searchList[index].description.toString(),
                      image:
                          "$baseUrl ${controller.searchList[index].image![0].image}")),
                  child: Container(
                    width: 180,
                    height: 90,
                    margin: const EdgeInsets.only(right: 8, bottom: 20),
                    padding: const EdgeInsets.only(left: 3, top: 3, bottom: 3),
                    decoration: BoxDecoration(
                      color: Colors.accents
                          .elementAt(Random().nextInt(Colors.accents.length))
                          .withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          width: 1.5, color: const Color(0xffF0F2F1)),
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(6.0),
                          child: Image.network(
                            "$baseUrl${controller.searchList[index].image!.first.image}",
                            fit: BoxFit.cover,
                            height: 123,
                            width: Get.width * 0.2,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                controller.searchList[index].name.toString(),
                                style: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                                controller.searchList[index].price.toString(),
                                style: const TextStyle(
                                    fontSize: 12,
                                    decoration: TextDecoration.lineThrough),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                controller.searchList[index].newPrice
                                    .toString(),
                                style: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ));
          },
        ));
  }
}
