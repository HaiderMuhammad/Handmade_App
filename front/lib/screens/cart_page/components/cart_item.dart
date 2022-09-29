import 'package:flutter/material.dart';
import 'package:front/models/Favorite.dart';


class CartItem extends StatelessWidget {
  const CartItem({
    Key? key,
    required this.favorite,
  }) : super(key: key);

  final Favorite favorite;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6.0),
            child: Image.asset(
              favorite.image,
              width: 86,
              height: 76,
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
                      favorite.name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    IconButton(
                        onPressed: (){
                          Favorite.delCart();
                        },
                        icon: const Icon(Icons.schedule_sharp, color: Color(0xff939393),))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      favorite.price,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff67C4A7),
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.remove_circle_outline_outlined,
                            color: Color(0xff939393),
                          ),
                        ),
                        const Text(
                          '1',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add_circle_outline_outlined,
                            color: Color(0xff939393),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}