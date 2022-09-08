import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({
    Key? key,
    required this.icon,
    required this.color,
  }) : super(key: key);

  final String icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 11),
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: IconButton(
          
          iconSize: 60,
          icon: Image.asset(icon), 
          onPressed: () {  },
        ),
      ),
    );
  }
}