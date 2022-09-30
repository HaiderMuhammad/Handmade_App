import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:front/api_call/product_api/api_methods.dart';
import 'package:front/navBar.dart';
import 'package:front/register/email_field.dart';
import 'package:front/screens/home_page/home.dart';
import 'package:front/services/auth_service/auth.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey();


  @override
  Widget build(BuildContext context) {
    AuthService auth = AuthService();
    String userName = '';
    String email = '';
    String password1 = '';
    String password2 = '';
    String address = '';
    String phone = '';

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 80.0),
                child: Text(
                  "Welcome to",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25, color: Colors.black),
                ),
              ),
              Text(
                "Handmade",
                style: GoogleFonts.skranji(
                    fontWeight: FontWeight.w600,
                    fontSize: 30, color: const Color(0xff67C4A7), height: 1.3),
              ),

              EmailField(hint: 'Name', onChanged: (value) => userName = value),
              EmailField(hint: 'Email', onChanged: (value) => email = value),
              EmailField(hint: 'Password', onChanged: (value) => password1 = value),
              EmailField(hint: 'Conform password', onChanged: (value) => password2 = value),
              EmailField(hint: 'Phone number', onChanged: (value) => phone = value),
              EmailField(hint: 'Address', onChanged: (value) => address = value),

              Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
                  child: MaterialButton(
                    onPressed: () async{

                      await signUp(
                          name: userName,
                          email: email,
                          password1: password1,
                          password2: password2,
                          phone: phone,
                          address: address
                      );
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NavBar()),
                      );
                    },
                    height: 65,
                    minWidth: double.infinity,
                    color: const Color(0xff2D4990),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: const Text("Sign Up",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        )
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
