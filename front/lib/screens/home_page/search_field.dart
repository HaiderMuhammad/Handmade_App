import 'package:flutter/material.dart';
import 'package:front/api_call/product_api/api_methods.dart';
import 'package:front/controllers/search_controller.dart';
import 'package:front/screens/search_page/search_page.dart';
import 'package:get/get.dart';

class SearchField extends StatelessWidget {
  SearchField({
    Key? key, required this.controller,
  }) : super(key: key);

  ApiServices api = ApiServices();
  final TextEditingController controller;
  SearchController searchController = Get.find<SearchController>();


  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          TextField(
            controller: controller,
        onSubmitted: (_){
          if(searchController.controller.text.isEmpty){
            return;
          }
          else{
            searchController.searchProducts();
            Get.to(()=> const SearchPage());
          }
        },
        decoration: InputDecoration(
            hintText: 'Search here ...',
            hintStyle: const TextStyle(
                fontSize: 13,
                color: Color(0xffC8C8CB)
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1,color: Color(0xffF0F2F1),
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(5)
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: Colors.blue),
              borderRadius: BorderRadius.circular(5),
            ),
            prefixIcon: SizedBox(
              height: 20,
              width: 20,
              child: IconButton(
                  onPressed: (){},
                  padding: const EdgeInsets.all(0),
                  icon: const Icon(Icons.search_outlined)),
            ),
            contentPadding: const EdgeInsets.only(top: 15,bottom: 15)
        ),
      ),
        ],
      );

  }
}