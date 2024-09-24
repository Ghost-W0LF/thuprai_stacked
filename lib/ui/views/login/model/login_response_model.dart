// To parse this JSON data, do
//
//     final loginResponseModel = loginResponseModelFromJson(jsonString);

import 'dart:convert';

LoginResponseModel loginResponseModelFromJson(String str) =>
    LoginResponseModel.fromJson(json.decode(str));

String loginResponseModelToJson(LoginResponseModel data) =>
    json.encode(data.toJson());

class LoginResponseModel {
  String? fullName;
  String? email;
  int? id;
  String? token;
  bool? isStaff;
  List<dynamic>? roles;
  Organizations? organizations;

  LoginResponseModel({
    this.fullName,
    this.email,
    this.id,
    this.token,
    this.isStaff,
    this.roles,
    this.organizations,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      LoginResponseModel(
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
