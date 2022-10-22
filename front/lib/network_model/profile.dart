// To parse this JSON data, do
//
//     final profileModel = profileModelFromJson(jsonString);

import 'dart:convert';

// List<ProfileModel> allProductsFromJson(String str) =>
//     List<ProfileModel>.from(json.decode(str).map((x) => ProfileModel.fromJson(x)));
//
// String userModelToJson(List<ProfileModel> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

ProfileModel profileModelFromJson(String str) => ProfileModel.fromJson(json.decode(str));
String profileModelToJson(ProfileModel data) => json.encode(data.toJson());
class ProfileModel {
  ProfileModel({
    this.email,
    this.first_name,
    this.last_name,
    this.phone_number,
    this.address,
  });

  String? email;
  String? first_name;
  String? last_name;
  String? phone_number;
  String? address;

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
    email: json["email"],
    first_name: json["first_name"],
    last_name: json["last_name"],
    phone_number: json["phone_number"],
    address: json["address"],
  );

  Map<String, dynamic> toJson() => {
    "email": email,
    "first_name": first_name,
    "last_name": last_name,
    "phone_number": phone_number,
    "address": address,
  };
}
