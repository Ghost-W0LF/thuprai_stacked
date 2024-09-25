// To parse this JSON data, do
//
//     final getCartModel = getCartModelFromJson(jsonString);

import 'dart:convert';

GetCartModel getCartModelFromJson(String str) => GetCartModel.fromJson(json.decode(str));

String getCartModelToJson(GetCartModel data) => json.encode(data.toJson());

class GetCartModel {
    int id;
    dynamic owner;
    String status;
    List<dynamic> lines;
    String url;
    String totalExclTax;
    String totalExclTaxExclDiscounts;
    String totalInclTax;
    String totalInclTaxExclDiscounts;
    String totalTax;
    List<dynamic> voucherDiscounts;
    bool isTaxKnown;

    GetCartModel({
        required this.id,
        required this.owner,
        required this.status,
        required this.lines,
        required this.url,
        required this.totalExclTax,
        required this.totalExclTaxExclDiscounts,
        required this.totalInclTax,
        required this.totalInclTaxExclDiscounts,
        required this.totalTax,
        required this.voucherDiscounts,
        required this.isTaxKnown,
    });

    factory GetCartModel.fromJson(Map<String, dynamic> json) => GetCartModel(
        id: json["id"],
        owner: json["owner"],
        status: json["status"],
        lines: List<dynamic>.from(json["lines"].map((x) => x)),
        url: json["url"],
        totalExclTax: json["total_excl_tax"],
        totalExclTaxExclDiscounts: json["total_excl_tax_excl_discounts"],
        totalInclTax: json["total_incl_tax"],
        totalInclTaxExclDiscounts: json["total_incl_tax_excl_discounts"],
        totalTax: json["total_tax"],
        voucherDiscounts: List<dynamic>.from(json["voucher_discounts"].map((x) => x)),
        isTaxKnown: json["is_tax_known"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "owner": owner,
        "status": status,
        "lines": List<dynamic>.from(lines.map((x) => x)),
        "url": url,
        "total_excl_tax": totalExclTax,
        "total_excl_tax_excl_discounts": totalExclTaxExclDiscounts,
        "total_incl_tax": totalInclTax,
        "total_incl_tax_excl_discounts": totalInclTaxExclDiscounts,
        "total_tax": totalTax,
        "voucher_discounts": List<dynamic>.from(voucherDiscounts.map((x) => x)),
        "is_tax_known": isTaxKnown,
    };
}
