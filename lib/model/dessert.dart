// To parse this JSON data, do
//
//     final dessert = dessertFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class Dessert {
  final List<DessertElement> dessert;
  final List<Shop> shop;

  Dessert({
    @required this.dessert,
    @required this.shop,
  });

  Dessert copyWith({
    List<DessertElement> dessert,
    List<Shop> shop,
  }) =>
      Dessert(
        dessert: dessert ?? this.dessert,
        shop: shop ?? this.shop,
      );

  factory Dessert.fromRawJson(String str) => Dessert.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Dessert.fromJson(Map<String, dynamic> json) => Dessert(
    dessert: List<DessertElement>.from(json["dessert"].map((x) => DessertElement.fromJson(x))),
    shop: List<Shop>.from(json["shop"].map((x) => Shop.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "dessert": List<dynamic>.from(dessert.map((x) => x.toJson())),
    "shop": List<dynamic>.from(shop.map((x) => x.toJson())),
  };
}

class DessertElement {
  final String image;
  final String name;
  final String country;
  final String desc;
  final String foodType;

  DessertElement({
    @required this.image,
    @required this.name,
    @required this.country,
    @required this.desc,
    @required this.foodType,
  });

  DessertElement copyWith({
    String image,
    String name,
    String country,
    String desc,
    String foodType,
  }) =>
      DessertElement(
        image: image ?? this.image,
        name: name ?? this.name,
        country: country ?? this.country,
        desc: desc ?? this.desc,
        foodType: foodType ?? this.foodType,
      );

  factory DessertElement.fromRawJson(String str) => DessertElement.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DessertElement.fromJson(Map<String, dynamic> json) => DessertElement(
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

class Shop {
  final String image;
  final String name;
  final String address;
  final String opentime;

  Shop({
    @required this.image,
    @required this.name,
    @required this.address,
    @required this.opentime,
  });

  Shop copyWith({
    String image,
    String name,
    String address,
    String opentime,
  }) =>
      Shop(
        image: image ?? this.image,
        name: name ?? this.name,
        address: address ?? this.address,
        opentime: opentime ?? this.opentime,
      );

  factory Shop.fromRawJson(String str) => Shop.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Shop.fromJson(Map<String, dynamic> json) => Shop(
    image: json["image"],
    name: json["name"],
    address: json["address"],
    opentime: json["opentime"],
  );

  Map<String, dynamic> toJson() => {
    "image": image,
    "name": name,
    "address": address,
    "opentime": opentime,
  };
}
