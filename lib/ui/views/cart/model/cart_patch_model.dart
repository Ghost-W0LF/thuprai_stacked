// To parse this JSON data, do
//
//     final cartPatchModel = cartPatchModelFromJson(jsonString);

import 'dart:convert';

List<CartPatchModel> cartPatchModelFromJson(String str) =>
    List<CartPatchModel>.from(
        json.decode(str).map((x) => CartPatchModel.fromJson(x)));

String cartPatchModelToJson(List<CartPatchModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CartPatchModel {
  int? quantity;

  CartPatchModel({
    this.quantity,
  });

  factory CartPatchModel.fromJson(Map<String, dynamic> json) => CartPatchModel(
        quantity: json["quantity"],
      );

  Map<String, dynamic> toJson() => {
        "quantity": quantity,
      };
}
