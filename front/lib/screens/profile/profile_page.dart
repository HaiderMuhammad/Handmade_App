import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:front/screens/profile/profile_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File? _image;
  Future getImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) return;

    final imageTemporary = File(image.path);

    setState(() {
      _image = imageTemporary;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                _image != null
                ? SizedBox(
            height: 90,
              width: 90,
              child: Stack(
                clipBehavior: Clip.none,
                fit: StackFit.expand,
                children: [
                  CircleAvatar(
                    backgroundImage: FileImage(
                      _image!,
                    )
                  ),
                  Positioned(
                      bottom: -5,
                      right: -35,
                      child: MaterialButton(
                        onPressed: () {
                          showModalBottomSheet(
                              context: context, builder: (builder) => alertButton());
                        },
                        height: 27,
                        color: const Color(0xFFF5F6F9),
                        shape: const CircleBorder(),
                        child: const Icon(Icons.edit, color: Colors.blue, size: 15,),
                      )),
                ],
              ),
            )
                    : imageProfile(),
                const ProfileView(),
              ],
            ),
          ),
        )
    );
  }

  Widget imageProfile() {
    return Center(
      child: SizedBox(
        width: 90,
        height: 90,
        child: CircleAvatar(
          backgroundColor: Colors.blueAccent,
          child: Center(
            child: IconButton(
                onPressed: () => showModalBottomSheet(
                    context: context, builder: (builder) => alertButton()),
                icon: const Icon(
                  CupertinoIcons.person_add,
                  color: Colors.white,
                  size: 30,
                )
            ),
          )
        ),
      )
    );
  }

  Widget alertButton() {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          Text(
            "Choose profile image",
            style:
                GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                  onPressed: () {
                    getImage(ImageSource.camera);
                  },
                  child: Row(
                    children: [
                      const Icon(CupertinoIcons.photo_camera),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Camera",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      )
                    ],
                  )),
              Container(
                width: 2,
                height: 35,
                margin: const EdgeInsets.only(left: 25, right: 25),
                color: Colors.black,
              ),
              MaterialButton(
                  onPressed: () {
                    getImage(ImageSource.gallery);
                  },
                  child: Row(
                    children: [
                      const Icon(
                        CupertinoIcons.photo
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Gallery",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      )
                    ],
                  )),
            ],
          )
        ],
      ),
    );
  }
}
