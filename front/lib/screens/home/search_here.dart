import 'package:flutter/material.dart';

class SearchHere extends StatelessWidget {
  const SearchHere({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search here ...',
        hintStyle: const TextStyle(
          fontSize: 13,
          color: Color(0xffC8C8CB)
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1,color: Color(0xffF0F2F1),
          style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(8)
          ),
          focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Colors.blue),
          borderRadius: BorderRadius.circular(15),
          ),
        prefixIcon: SizedBox(
          height: 20,
          width: 20,
          child: IconButton(
            padding: const EdgeInsets.all(0),
            onPressed: (){},
             icon: const Icon(Icons.search_outlined)),
        ),
        contentPadding: const EdgeInsets.only(top: 15,bottom: 15)
      ),
    );
  }
}
