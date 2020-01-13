// To parse this JSON data, do
//
//     final priceHistory = priceHistoryFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class PriceHistory {
  final List<Food> foods;
  final List<Shop> shop;

  PriceHistory({
    @required this.foods,
    @required this.shop,
  });

  PriceHistory copyWith({
    List<Food> foods,
    List<Shop> shop,
  }) =>
      PriceHistory(
        foods: foods ?? this.foods,
        shop: shop ?? this.shop,
      );

  factory PriceHistory.fromRawJson(String str) => PriceHistory.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PriceHistory.fromJson(Map<String, dynamic> json) => PriceHistory(
    foods: List<Food>.from(json["foods"].map((x) => Food.fromJson(x))),
    shop: List<Shop>.from(json["shop"].map((x) => Shop.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "foods": List<dynamic>.from(foods.map((x) => x.toJson())),
    "shop": List<dynamic>.from(shop.map((x) => x.toJson())),
  };
}

class Food {
  final String image;
  final String name;
  final String country;
  final String desc;
  final String foodType;

  Food({
    @required this.image,
    @required this.name,
    @required this.country,
    @required this.desc,
    @required this.foodType,
  });

  Food copyWith({
    String image,
    String name,
    String country,
    String desc,
    String foodType,
  }) =>
      Food(
        image: image ?? this.image,
        name: name ?? this.name,
        country: country ?? this.country,
        desc: desc ?? this.desc,
        foodType: foodType ?? this.foodType,
      );

  factory Food.fromRawJson(String str) => Food.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Food.fromJson(Map<String, dynamic> json) => Food(
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
