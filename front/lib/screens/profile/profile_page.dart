import 'dart:io';
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
    if( image == null ) return;

    final imageTemporary = File(image.path);

    setState(() {
      _image = imageTemporary;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _image !=null
                ? ClipOval(
              child: Image.file(_image!,
                width: MediaQuery.of(context).size.width * 0.22,
                height: MediaQuery.of(context).size.height * 0.10,
                fit: BoxFit.cover,),
            )
                : imageProfile(),

            const SizedBox(height: 30,),

            GestureDetector(
              onTap: (){
                showModalBottomSheet(
                    context:context,
                    builder: (builder) => alertButton());
              },
              child: Container(
                height: 45,
                width: MediaQuery.of(context).size.width/3.0,
                decoration:  BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: const Center(
                  child: Text("select image",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 17

                    ),
                  ),
                ),
              ),
            ),
            const ProfileView(),
          ],
        ),
      )
    );
  }


  Widget imageProfile() {
    return Center(
      child: Stack(
        children: const [
          CircleAvatar(
            radius: 45.0,
            backgroundColor: Colors.black,
            child: Icon(Icons.add,color: Colors.white,size: 40,),
          ),
        ],
      ),
    );
  }
  Widget alertButton() {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20
      ),
      child: Column(
        children: [
          Text("Choose profile image",
            style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                  onPressed: (){
                    getImage(ImageSource.camera);
                  },
                  child: Row(
                    children: [
                      const Icon(Icons.camera_enhance),
                      const SizedBox(width: 10,),
                      Text("Camera",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                        ),
                      )
                    ],
                  )
              ),
              Container(
                width: 2,
                height: 30,
                margin: const EdgeInsets.only(left: 25,right: 25),
                color: Colors.black,
              ),
              MaterialButton(
                  onPressed: (){
                    getImage(ImageSource.gallery);
                  },
                  child: Row(
                    children: [
                      const Icon(Icons.browse_gallery,),
                      const SizedBox(width: 10,),
                      Text("Gallery",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                        ),
                      )
                    ],
                  )
              ),
            ],
          )
        ],
      ),
    );
  }
}
