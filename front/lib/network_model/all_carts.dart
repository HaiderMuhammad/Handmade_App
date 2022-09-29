// To parse this JSON data, do
//
//     final allCarts = allCartsFromJson(jsonString);

import 'dart:convert';

List<CartsModel> allProductsFromJson(String str) =>
    List<CartsModel>.from(json.decode(str).map((x) => CartsModel.fromJson(x)));

String userModelToJson(List<CartsModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CartsModel {
  CartsModel({
    this.id,
    this.product,
    this.itemQty,
    this.ordered,
  });

  String? id;
  Product? product;
  int? itemQty;
  bool? ordered;

  factory CartsModel.fromJson(Map<String, dynamic> json) => CartsModel(
    id: json["id"],
    product: Product.fromJson(json["product"]),
    itemQty: json["item_qty"],
    ordered: json["ordered"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "product": product!.toJson(),
    "item_qty": itemQty,
    "ordered": ordered,
  };
}

class Product {
  Product({
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
    this.images,
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
  List<Image>? images;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json["id"],
    name: json["name"],
    description: json["description"],
    inStock: json["in_stock"],
    qty: json["qty"],
    price: json["price"].toDouble(),
    newPrice: json["new_price"].toDouble(),
    category: json["category"],
    isFeatured: json["is_featured"],
    isActive: json["is_active"],
    images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
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
    "images": List<dynamic>.from(images!.map((x) => x.toJson())),
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
