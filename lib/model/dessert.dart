// To parse this JSON data, do
//
//     final dessertModel = dessertModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class DessertModel {
  final List<Dessert> dessert;
  final List<Shop> shop;

  DessertModel({
    @required this.dessert,
    @required this.shop,
  });

  DessertModel copyWith({
    List<Dessert> dessert,
    List<Shop> shop,
  }) =>
      DessertModel(
        dessert: dessert ?? this.dessert,
        shop: shop ?? this.shop,
      );

  factory DessertModel.fromRawJson(String str) => DessertModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DessertModel.fromJson(Map<String, dynamic> json) => DessertModel(
    dessert: List<Dessert>.from(json["dessert"].map((x) => Dessert.fromJson(x))),
    shop: List<Shop>.from(json["shop"].map((x) => Shop.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "dessert": List<dynamic>.from(dessert.map((x) => x.toJson())),
    "shop": List<dynamic>.from(shop.map((x) => x.toJson())),
  };
}

class Dessert {
  final String image;
  final String name;
  final String country;
  final String desc;
  final String foodType;
  final int background;
  final int iconColor;

  Dessert({
    @required this.image,
    @required this.name,
    @required this.country,
    @required this.desc,
    @required this.foodType,
    @required this.background,
    @required this.iconColor,
  });

  Dessert copyWith({
    String image,
    String name,
    String country,
    String desc,
    String foodType,
    int background,
    int iconColor,
  }) =>
      Dessert(
        image: image ?? this.image,
        name: name ?? this.name,
        country: country ?? this.country,
        desc: desc ?? this.desc,
        foodType: foodType ?? this.foodType,
        background: background ?? this.background,
        iconColor: iconColor ?? this.iconColor,
      );

  factory Dessert.fromRawJson(String str) => Dessert.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Dessert.fromJson(Map<String, dynamic> json) => Dessert(
    image: json["image"],
    name: json["name"],
    country: json["country"],
    desc: json["desc"],
    foodType: json["foodType"],
    background: json["background"],
    iconColor: json["iconColor"],
  );

  Map<String, dynamic> toJson() => {
    "image": image,
    "name": name,
    "country": country,
    "desc": desc,
    "foodType": foodType,
    "background": background,
    "iconColor": iconColor,
  };
}

class Shop {
  final String image;
  final String name;
  final String desc;
  final String openTime;

  Shop({
    @required this.image,
    @required this.name,
    @required this.desc,
    @required this.openTime,
  });

  Shop copyWith({
    String image,
    String name,
    String desc,
    String openTime,
  }) =>
      Shop(
        image: image ?? this.image,
        name: name ?? this.name,
        desc: desc ?? this.desc,
        openTime: openTime ?? this.openTime,
      );

  factory Shop.fromRawJson(String str) => Shop.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Shop.fromJson(Map<String, dynamic> json) => Shop(
    image: json["image"],
    name: json["name"],
    desc: json["desc"],
    openTime: json["openTime"],
  );

  Map<String, dynamic> toJson() => {
    "image": image,
    "name": name,
    "desc": desc,
    "openTime": openTime,
  };
}
