// To parse this JSON data, do
//
//     final signupRequest = signupRequestFromJson(jsonString);

import 'dart:convert';

List<SignupRequest> signupRequestFromJson(String str) =>
    List<SignupRequest>.from(
        json.decode(str).map((x) => SignupRequest.fromJson(x)));

String signupRequestToJson(List<SignupRequest> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SignupRequest {
  String? email;
  String? fullName;
  String? password;

  SignupRequest({
    this.email,
    this.fullName,
    this.password,
  });

  factory SignupRequest.fromJson(Map<String, dynamic> json) => SignupRequest(
        email: json["email"],
        fullName: json["full_name"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "full_name": fullName,
        "password": password,
      };
}
