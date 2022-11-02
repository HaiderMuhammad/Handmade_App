import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:front/controllers/profile_controller.dart';
import 'package:front/widgets/customButton.dart';
import 'package:front/widgets/custom_divider.dart';
import 'package:front/widgets/profile_fields.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return controller.profileData.value == null
        ? const SizedBox.shrink()
        : Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        controller.profileData.value!.first_name!.capitalize.toString(),
                        style: GoogleFonts.roboto(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87
                        ),
                      ),
                      const SizedBox(width: 7,),
                      Text(
                        controller.profileData.value!.last_name!.capitalize.toString(),
                        style: GoogleFonts.roboto(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 80,),
                  const CustomDivider(text: 'ACCOUNT',),
                  ProfileField(
                    text: controller.profileData.value!.email.toString(),
                    text2: '123456',
                    icon: Icons.email_rounded,
                    icon2: Icons.key_outlined,
                  ),
                  const CustomDivider(text: 'INFORMATION',),
                  ProfileField(
                    text: controller.profileData.value!.phone_number.toString(),
                    text2: controller.profileData.value!.address![0].toUpperCase().toString() +
                        controller.profileData.value!.address!.substring(1).toString()
                    ,
                    icon: Icons.phone_sharp,
                    icon2: CupertinoIcons.paperplane,
                  ),

                  const CustomButton(text: 'Sign Out',)
                ],
              ),
            )
    );
  }
}

