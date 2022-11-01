// To parse this JSON data, do
//
//     final totalPrice = totalPriceFromJson(jsonString);

import 'dart:convert';

List<TotalPriceModel> totalPriceFromJson(String str) => List<TotalPriceModel>.from(json.decode(str).map((x) => TotalPriceModel.fromJson(x)));

String totalPriceToJson(List<TotalPriceModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TotalPriceModel {
  TotalPriceModel({
    this.id,
    this.user,
    this.orderTotal,
    this.status,
    this.items,
  });

  String? id;
  User? user;
  double? orderTotal;
  Status? status;
  List<Item>? items;

  factory TotalPriceModel.fromJson(Map<String, dynamic> json) => TotalPriceModel(
    id: json["id"],
    user: User.fromJson(json["user"]),
    orderTotal: json["order_total"].toDouble(),
    status: Status.fromJson(json["status"]),
    items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user": user!.toJson(),
    "order_total": orderTotal,
    "status": status?.toJson(),
    "items": List<dynamic>.from(items!.map((x) => x.toJson())),
  };
}

class Item {
  Item({
    this.id,
    this.product,
    this.itemQty,
    this.ordered,
  });

  String? id;
  Product? product;
  int? itemQty;
  bool? ordered;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
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
    images: List<Image>.from(json["images"]?.map((x) => Image.fromJson(x))),
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

class Status {
  Status({
    this.title,
    this.isDefault,
  });

  String? title;
  bool? isDefault;

  factory Status.fromJson(Map<String, dynamic> json) => Status(
    title: json["title"],
    isDefault: json["is_default"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "is_default": isDefault,
  };
}

class User {
  User({
    this.email,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.address,
  });

  String? email;
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? address;

  factory User.fromJson(Map<String, dynamic> json) => User(
    email: json["email"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    phoneNumber: json["phone_number"],
    address: json["address"],
  );

  Map<String, dynamic> toJson() => {
    "email": email,
    "first_name": firstName,
    "last_name": lastName,
    "phone_number": phoneNumber,
    "address": address,
  };
}
