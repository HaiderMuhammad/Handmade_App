import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class ProductName extends StatelessWidget {
  const ProductName({
    Key? key, required this.name,
  }) : super(key: key);

  final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: const TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 15,
                color: Colors.black87
            ),

          ),
          LikeButton(
            size: 27,
             )
        ],
      ),
    );
  }
}