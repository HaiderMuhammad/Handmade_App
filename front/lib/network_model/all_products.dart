

// To parse this JSON data, do
//
//     final allProducts = allProductsFromJson(jsonString);

import 'dart:convert';

List<ProductsModel> allProductsFromJson(String str) =>
    List<ProductsModel>.from(json.decode(str).map((x) => ProductsModel.fromJson(x)));

String userModelToJson(List<ProductsModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductsModel {
  ProductsModel({
    this.id,
    this.name,
    this.description,
    this.inStock,
    this.qty,
    this.price,
    this.newPrice,
    this.category,
    this.isFeatured,
    this.isActive,
    this.image,
  });

  String? id;
  String? name;
  String? description;
  bool? inStock;
  int? qty;
  double? price;
  double? newPrice;
  String? category;
  bool? isFeatured;
  bool? isActive;
  List<Image>? image;

  factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
    id: json["id"],
    name: json["name"],
    description: json["description"],
    inStock: json["in_stock"],
    qty: json["qty"],
    price: json["price"],
    newPrice: json["new_price"],
    category: json["category"],
    isFeatured: json["is_featured"],
    isActive: json["is_active"],
    image: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "description": description,
    "in_stock": inStock,
    "qty": qty,
    "price": price,
    "new_price": newPrice,
    "category": category,
    "is_featured": isFeatured,
    "is_active": isActive,
    "images": List<dynamic>.from(image!.map((x) => x.toJson())),
  };
}

class Image {
  Image({
    this.id,
    this.image,
  });

  String? id;
  String? image;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    id: json["id"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image": image,
  };
}
