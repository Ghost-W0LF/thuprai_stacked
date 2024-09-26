// To parse this JSON data, do
//
//     final addCartRequest = addCartRequestFromJson(jsonString);

import 'dart:convert';

List<AddCartRequest> addCartRequestFromJson(String str) =>
    List<AddCartRequest>.from(
        json.decode(str).map((x) => AddCartRequest.fromJson(x)));

String addCartRequestToJson(List<AddCartRequest> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AddCartRequest {
  String? path;
  int? quantity;
  String? url;

  AddCartRequest({
    this.path,
    this.quantity,
    this.url,
  });

  factory AddCartRequest.fromJson(Map<String, dynamic> json) => AddCartRequest(
        path: json["path"],
        quantity: json["quantity"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "path": path,
        "quantity": quantity,
        "url": url,
      };
}
