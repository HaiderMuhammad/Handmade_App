import 'package:flutter/material.dart';
import 'package:front/api_call/product_api/api_methods.dart';
import 'package:front/navBar.dart';
import 'package:front/widgets/email_field.dart';
import 'package:front/register/login_page.dart';
import 'package:front/screens/home_page/home.dart';
import 'package:front/services/auth_service/auth.dart';
import 'package:front/widgets/name_field.dart';
import 'package:front/widgets/password_field.dart';
import 'package:front/widgets/phone_field.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    String first_name = '';
    String last_name = '';
    String email = '';
    String password1 = '';
    String password2 = '';
    String address = '';
    String phone_number = '';

    return Scaffold(
        body: SingleChildScrollView(
            child: Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 80.0),
                child: Text(
                  "Welcome to",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                      color: Colors.black),
                ),
              ),
              Text(
                "Handmade",
                style: GoogleFonts.skranji(
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                    color: const Color(0xff67C4A7),
                    height: 1.3),
              ),
              NameField(
                  hint: 'First name', onChanged: (value) => first_name = value),
              NameField(
                  hint: 'First name', onChanged: (value) => last_name = value),
              EmailField(hint: 'Email', onChanged: (value) => email = value),
              PasswordField(
                hint: 'Password',
                onChanged: (value) => password1 = value,
                isSecure: true,
              ),
              PasswordField(
                hint: 'Conform password',
                onChanged: (value) => password2 = value,
                confirmPassword: password1,
                isSecure: true,
              ),
              PhoneField(
                  hint: 'Phone number',
                  onChanged: (value) => phone_number = value),
              NameField(hint: 'Address', onChanged: (value) => address = value),
              Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 40),
                  child: MaterialButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        await signUp(first_name, last_name, email, password1,
                            password2, phone_number, address);
                        Get.to(() => LoginPage());
                      } else {
                        print('please enter all fields');
                      }
                    },
                    height: 65,
                    minWidth: double.infinity,
                    color: const Color(0xff2D4990),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: const Text("Sign Up",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                  )),
            ],
          ),
        ),
      ),
    )));
  }
}
