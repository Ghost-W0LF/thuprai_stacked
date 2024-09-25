// To parse this JSON data, do
//
//     final addCartRequest = addCartRequestFromJson(jsonString);

import 'dart:convert';

AddCartRequest addCartRequestFromJson(String str) =>
    AddCartRequest.fromJson(json.decode(str));

String addCartRequestToJson(AddCartRequest data) => json.encode(data.toJson());

class AddCartRequest {
  Reason reason;

  AddCartRequest({
    required this.reason,
  });

  factory AddCartRequest.fromJson(Map<String, dynamic> json) => AddCartRequest(
        reason: Reason.fromJson(json["reason"]),
      );

  Map<String, dynamic> toJson() => {
        "reason": reason.toJson(),
      };
}

class Reason {
  List<String> quantity;
  List<String> url;

  Reason({
    required this.quantity,
    required this.url,
  });

  factory Reason.fromJson(Map<String, dynamic> json) => Reason(
        quantity: List<String>.from(json["quantity"].map((x) => x)),
        url: List<String>.from(json["url"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "quantity": List<dynamic>.from(quantity.map((x) => x)),
        "url": List<dynamic>.from(url.map((x) => x)),
      };
}
