import 'package:flutter/material.dart';
import 'package:front/register/login_page.dart';
import 'package:front/register/email_field.dart';
import 'package:google_fonts/google_fonts.dart';

import '../services/auth_service/auth.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);
  final TextEditingController firstNameCont = TextEditingController();
  final TextEditingController lastNameCont = TextEditingController();
  final TextEditingController emailCont = TextEditingController();
  final TextEditingController passwordCont = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
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
            // FieldContainer(hint: 'First Name'),
            // FieldContainer(hint: 'Last Name'),
            // FieldContainer(hint: 'Email'),
            // FieldContainer(hint: 'Password'),
            // FieldContainer(hint: 'Confirm password'),

            Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
                child: MaterialButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
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
    );
  }
}
