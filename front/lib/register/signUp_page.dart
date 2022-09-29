import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:front/register/email_field.dart';
import 'package:front/screens/home_page/home.dart';
import 'package:front/services/auth_service/auth.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey();


  @override
  Widget build(BuildContext context) {
    String name = '';
    String email = '';
    String password1 = '';
    String password2 = '';

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

              EmailField(hint: 'name', onChanged: (value) => name = value),
              EmailField(hint: 'email', onChanged: (value) => email = value),
              EmailField(hint: 'password1', onChanged: (value) => password1 = value),
              EmailField(hint: 'password2', onChanged: (value) => password2 = value),

              Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
                  child: MaterialButton(
                    onPressed: () async{

                      // await AuthService.signUp(
                      //   name: name,
                      //   email: email,
                      //   password1: password1,
                      //   password2: password2
                      //
                      // );
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePage()),
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
              Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
                  child: MaterialButton(
                    onPressed: (){},
                    height: 65,
                    minWidth: double.infinity,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: const BorderSide(color: Colors.grey)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 5),
                          width: 28,
                          height: 28,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/google.png')
                              )
                          ),
                        ),
                        const Text("Login with Google",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12
                            )
                        ),
                      ],
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
