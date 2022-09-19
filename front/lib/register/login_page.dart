import 'package:flutter/material.dart';
import 'package:front/register/email_field.dart';
import 'package:front/register/password_field.dart';
import 'package:front/register/signUp_page.dart';
import 'package:front/services/auth_service/auth.dart';
import 'package:get/get.dart' hide Response;


class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    String email = '';
    String password = '';

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 100.0, bottom: 100),
                  child: Text(
                    "Welcome Back",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),
                  ),
                ),
                EmailField(hint: 'Email', onChanged: (value) => email= value ,),
                PasswordField( hint: 'Password', onChanged: (value) => password= value, isSecure: true,),

                Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10, top: 50),

                    child: MaterialButton(
                          onPressed: () async {
                            await AuthService.signIn(
                                email: email,
                                password: password
                            );

                            if(_formKey.currentState!.validate()){
                              return;
                            }
                            else
                              {
                                print('invalid email and password');
                              }
                            // print(res?.name??'failed');
                          },
                          height: 65,
                          minWidth: double.infinity,
                          color: const Color(0xff2D4990),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: const Text("Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                              )
                          ),
                        )
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0),
                      child: Row(
                        children: [
                          const Text(
                              'Don’t have an account?',
                            style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 12, color: Colors.black87
                            ),
                          ),
                          TextButton(
                              onPressed: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder:(context) =>  SignUp())
                                );
                              },
                              child: const Text(
                                'Sign up',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12, color: Color(0xff2D4990)
                                ),
                              ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
                    child: MaterialButton(
                      onPressed: () {
                      },
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
      ),
    );
  }
}
