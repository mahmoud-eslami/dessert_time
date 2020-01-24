// To parse this JSON data, do
//
//     final dessertModel = dessertModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class DessertModel {
  final List<Dessert> dessert;

  DessertModel({
    @required this.dessert,
  });

  DessertModel copyWith({
    List<Dessert> dessert,
  }) =>
      DessertModel(
        dessert: dessert ?? this.dessert,
      );

  factory DessertModel.fromRawJson(String str) => DessertModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DessertModel.fromJson(Map<String, dynamic> json) => DessertModel(
    dessert: List<Dessert>.from(json["dessert"].map((x) => Dessert.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "dessert": List<dynamic>.from(dessert.map((x) => x.toJson())),
  };
}

class Dessert {
  final String image;
  final String name;
  final String country;
  final String desc;
  final String foodType;

  Dessert({
    @required this.image,
    @required this.name,
    @required this.country,
    @required this.desc,
    @required this.foodType,
  });

  Dessert copyWith({
    String image,
    String name,
    String country,
    String desc,
    String foodType,
  }) =>
      Dessert(
        image: image ?? this.image,
        name: name ?? this.name,
        country: country ?? this.country,
        desc: desc ?? this.desc,
        foodType: foodType ?? this.foodType,
      );

  factory Dessert.fromRawJson(String str) => Dessert.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Dessert.fromJson(Map<String, dynamic> json) => Dessert(
    image: json["image"],
    name: json["name"],
    country: json["country"],
    desc: json["desc"],
    foodType: json["foodType"],
  );

  Map<String, dynamic> toJson() => {
    "image": image,
    "name": name,
    "country": country,
    "desc": desc,
    "foodType": foodType,
  };
}
