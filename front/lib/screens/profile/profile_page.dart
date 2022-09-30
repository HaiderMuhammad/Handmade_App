
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:front/api_call/product_api/api_methods.dart';
import 'package:front/network_model/profile.dart';
import 'package:front/screens/profile/profile_fields.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                width: double.infinity,
                height: 200,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 150,
                      color: const Color(0xff67C4A7),
                      child: const Center(
                        child: Text(
                          'Profile',
                          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 105,
                      left: 150,
                      child: Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(45),
                            border: Border.all(width: 4, color: Colors.white),
                            image: const DecorationImage(
                                image: AssetImage('assets/images/person.jpg'),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                    ),
                  ],
                )
            ),

            const ContainerField(),

            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: MaterialButton(
                  onPressed: (){},
                  height: 55,
                  minWidth: double.infinity,
                  color: const Color(0xff67C4A7),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: const Text("Update",
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
    );
  }
}
