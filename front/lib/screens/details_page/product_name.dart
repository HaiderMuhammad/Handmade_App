import 'package:flutter/material.dart';

class LikeButton extends StatefulWidget {
  const LikeButton({Key? key, required this.test}) : super(key: key);

  final String test;

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {

  bool isLike = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: const EdgeInsets.only(top: 20),
      color: isLike ? Colors.redAccent
          : Colors.grey,
      icon: const Icon(Icons.favorite_rounded, size: 25,),
      onPressed: (){
        isLike = isLike;
        // api.AddToFav(id);
      },
    );;
  }
}
