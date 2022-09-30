import 'package:flutter/material.dart';
import 'package:front/models/Favorite.dart';

class Body1 extends StatelessWidget {
  const Body1({Key? key, required this.favorite}) : super(key: key);
  final Favorite favorite;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0,),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 76,
                width: 86,
                margin: const EdgeInsets.only(top: 25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(favorite.image),
                    fit: BoxFit.cover
                  )
                ),
              ),
              const SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      favorite.name,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                          decoration: TextDecoration.none
                      ),
                    ),
                    Text(
                      favorite.price,
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff67C4A7),
                          height: 2,
                          decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
