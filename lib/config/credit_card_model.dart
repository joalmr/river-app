// To parse this JSON data, do
//
//     final creditCardModel = creditCardModelFromJson(jsonString);

import 'dart:convert';

List<CreditCardModel> creditCardModelFromJson(String str) =>
    List<CreditCardModel>.from(
        json.decode(str).map((x) => CreditCardModel.fromJson(x)));

String creditCardModelToJson(List<CreditCardModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CreditCardModel {
  final String bank;
  final String brand;
  final int color;
  final String type;

  CreditCardModel({
    required this.bank,
    required this.brand,
    required this.color,
    required this.type,
  });

  factory CreditCardModel.fromJson(Map<String, dynamic> json) =>
      CreditCardModel(
        bank: json["bank"],
        brand: json["brand"],
        color: json["color"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "bank": bank,
        "brand": brand,
        "color": color,
        "type": type,
      };
}
