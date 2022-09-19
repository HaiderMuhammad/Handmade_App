
import 'package:flutter/material.dart';
import 'package:front/screens/profile/profile_fields.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

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
            const ContainerField(text: 'First Name', hint: 'first name',),
            const ContainerField(text: 'Last Name', hint: 'last name',),
            const ContainerField(text: 'Email', hint: 'Email',),
            const ContainerField(text: 'Phone Number', hint: 'phone number',),
            const ContainerField(text: 'Address', hint: 'address',),
            const ContainerField(text: 'Password', hint: 'password',),

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