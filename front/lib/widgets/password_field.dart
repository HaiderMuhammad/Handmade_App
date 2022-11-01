import 'package:flutter/material.dart';
class PasswordField extends StatelessWidget {
  const PasswordField({Key? key,
    required this.hint, required this.onChanged, this.isSecure = false, this.confirmPassword,
  }) : super(key: key);

  final String hint;
  final Function(String) onChanged;
  final bool isSecure;
  final String? confirmPassword;

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
          onChanged: onChanged,
          obscureText: isSecure,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hint,
            hintStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.grey),
          ),
          validator: (String? password1) {
            if (password1!.length < 6) {
              return 'Password must be at least 6 char';
            }
            if(password1 != confirmPassword && confirmPassword != null){
              return 'not match password';
            }
            return null;
          },
        )
    );
  }
}