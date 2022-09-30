import 'package:flutter/material.dart';
import 'package:front/models/product.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return

      TextField(
        onChanged: ((value) => Product.filterList(value)),
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
    );
  }
}