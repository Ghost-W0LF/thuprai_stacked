// To parse this JSON data, do
//
//     final signupResponseModel = signupResponseModelFromJson(jsonString);

import 'dart:convert';

SignupResponseModel signupResponseModelFromJson(String str) =>
    SignupResponseModel.fromJson(json.decode(str));

String signupResponseModelToJson(SignupResponseModel data) =>
    json.encode(data.toJson());

class SignupResponseModel {
  String? fullName;
  String? email;
  int? id;
  String? token;
  bool? isStaff;
  List<dynamic>? roles;
  Organizations? organizations;

  SignupResponseModel({
    this.fullName,
    this.email,
    this.id,
    this.token,
    this.isStaff,
    this.roles,
    this.organizations,
  });

  factory SignupResponseModel.fromJson(Map<String, dynamic> json) =>
      SignupResponseModel(
        fullName: json["full_name"],
        email: json["email"],
        id: json["id"],
        token: json["token"],
        isStaff: json["is_staff"],
        roles: json["roles"] == null
            ? []
            : List<dynamic>.from(json["roles"]!.map((x) => x)),
        organizations: json["organizations"] == null
            ? null
            : Organizations.fromJson(json["organizations"]),
      );

  Map<String, dynamic> toJson() => {
        "full_name": fullName,
        "email": email,
        "id": id,
        "token": token,
        "is_staff": isStaff,
        "roles": roles == null ? [] : List<dynamic>.from(roles!.map((x) => x)),
        "organizations": organizations?.toJson(),
      };
}

class Organizations {
  Organizations();

  factory Organizations.fromJson(Map<String, dynamic> json) => Organizations();

  Map<String, dynamic> toJson() => {};
}
