import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:front/api_call/product_api/api_methods.dart';
import 'package:front/network_model/profile.dart';

class ContainerField extends StatefulWidget {
  const ContainerField({Key? key}) : super(key: key);

  @override
  State<ContainerField> createState() => _ContainerFieldState();
}

class _ContainerFieldState extends State<ContainerField> {

  late List<ProfileModel>? profileModel = [];

  @override
  void initState() {
    super.initState();
    _getData();
  }
  void _getData() async {
    profileModel = (await ApiServices().getProfile());
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return profileModel == null || profileModel!.isEmpty
        ? const Center(
      child: CupertinoActivityIndicator(),
    )
        : ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: profileModel!.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.only(top: 15.0, right: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'First Name',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
                ),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 1, color: Colors.grey)
                    ),
                    child: TextField(
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: profileModel![index].firstName,
                        hintStyle: const TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.grey),
                      ),
                    )
                ),

                const Text(
                  'Last Name',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
                ),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 1, color: Colors.grey)
                    ),
                    child: TextField(
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: profileModel![index].lastName,
                        hintStyle: const TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.grey),
                      ),
                    )
                ),

                const Text(
                  'Email',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
                ),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 1, color: Colors.grey)
                    ),
                    child: TextField(
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: profileModel![index].email,
                        hintStyle: const TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.grey),
                      ),
                    )
                ),

                const Text(
                  'Phone Number',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
                ),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 1, color: Colors.grey)
                    ),
                    child: TextField(
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: profileModel![index].phoneNumber,
                        hintStyle: const TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.grey),
                      ),
                    )
                ),

                const Text(
                  'Address',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
                ),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 1, color: Colors.grey)
                    ),
                    child: TextField(
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: profileModel![index].address,
                        hintStyle: const TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.grey),
                      ),
                    )
                ),
              ],
            ),
          );
        }
    );

  }
}
