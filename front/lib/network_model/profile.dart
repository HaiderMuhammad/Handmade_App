// To parse this JSON data, do
//
//     final profileModel = profileModelFromJson(jsonString);

import 'dart:convert';

ProfileModel profileModelFromJson(String str) => ProfileModel.fromJson(json.decode(str));

String profileModelToJson(ProfileModel data) => json.encode(data.toJson());

class ProfileModel {
  ProfileModel({
    this.email,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.address,
  });

  String? email;
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? address;

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
    email: json["email"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    phoneNumber: json["phone_number"],
    address: json["address"],
  );

  Map<String, dynamic> toJson() => {
    "email": email,
    "first_name": firstName,
    "last_name": lastName,
    "phone_number": phoneNumber,
    "address": address,
  };
}
