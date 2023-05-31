

// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  String? email;
  String? userName;
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? inviteCode;

  UserModel({
    this.email,
    this.userName,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.inviteCode,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    email: json["email"],
    userName: json["userName"],
    firstName: json["firstName"],
    lastName: json["lastName"],
    phoneNumber: json["phoneNumber"],
    inviteCode: json["inviteCode"],
  );

  Map<String, dynamic> toJson() => {
    "email": email,
    "userName": userName,
    "firstName": firstName,
    "lastName": lastName,
    "phoneNumber": phoneNumber,
    "inviteCode": inviteCode,
  };
}
