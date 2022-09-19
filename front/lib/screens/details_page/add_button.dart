import 'package:flutter/material.dart';


class AddButton extends StatelessWidget {
  const AddButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 40),
        child: MaterialButton(
          onPressed: () {
          },
          height: 55,
          minWidth: double.infinity,
          color: const Color(0xff67C4A7),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)
          ),
          child: const Text("Add to Cart",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              )
          ),
        ),
    );
  }
}