import 'package:flutter/material.dart';


class EmailField extends StatelessWidget {
  const EmailField({Key? key,
    required this.hint, required this.onChanged
  }) : super(key: key);

  final String hint;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
        margin: const EdgeInsets.only(right: 10, left: 10, top: 25),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(196,137,198,.1),
                blurRadius: 10,
                offset: Offset(0,.1),
              )
            ]
        ),
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          onChanged: onChanged,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hint,
            hintStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.grey),
          ),
          validator: (String? email) {
            if (email != null && !email.contains('@')) {
              return 'Enter a valid email';
            }
            return null;
          },
        )
    );
  }
}