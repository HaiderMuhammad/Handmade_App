import 'package:flutter/material.dart';

class HorizontalScroll extends StatelessWidget {
  const HorizontalScroll({
    Key? key,
    required this.list,
    required this.height,
  }) : super(key: key);

  final List<Widget> list;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: const EdgeInsets.only(bottom: 10),
      margin: const EdgeInsets.only(bottom: 16),
      decoration: const BoxDecoration(
        // border: BorderDirectional(bottom: BorderSide(width: 1,color: Color(0xffC8C8CB))),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 6),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: list,
        ),
      ),
    );
  }
}