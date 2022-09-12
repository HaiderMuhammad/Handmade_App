import 'package:flutter/material.dart';

class ProfileField extends StatelessWidget {
  final String text;
  final String hint;
  const ProfileField({
    Key? key, required this.text, required this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(top: 15.0, right: 20, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
          ),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 1, color: Colors.grey)
                // boxShadow: const [
                //   BoxShadow(
                //     color: Color.fromRGBO(196,137,198,.1),
                //     blurRadius: 10,
                //     offset: Offset(0,.1),
                //   )
                // ]
              ),
              child: TextField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hint,
                  hintStyle: const TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.grey),
                ),
              )
          ),
        ],
      ),
    );
  }
}