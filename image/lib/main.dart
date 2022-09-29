import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    _getJokes();
  }

  Future<List<Product>> _getJokes() async {
    var res = await http
        .get(Uri.parse('http://172.18.249.18:8000/api/products/all?per_page=12&page=1'));
    print(res.body);

    List<Product> products = [];
    products = productFromJson(res.body) as List<Product>;

    return products;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test'),
      ),
      body: FutureBuilder(
        future: _getJokes(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(snapshot.data[index].image),
                  ),
                  title: Text(snapshot.data[index].name),
                  subtitle: Text(snapshot.data[index].description),
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);


Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
  Product({
    required this.totalCount,
    required this.perPage,
    required this.fromRecord,
    required this.toRecord,
    required this.previousPage,
    required this.nextPage,
    required this.currentPage,
    required this.pageCount,
    required this.data,
  });

  final int totalCount;
  final int perPage;
  final int fromRecord;
  final int toRecord;
  final int previousPage;
  final int nextPage;
  final int currentPage;
  final int pageCount;
  final List<Datum> data;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    totalCount: json["total_count"],
    perPage: json["per_page"],
    fromRecord: json["from_record"],
    toRecord: json["to_record"],
    previousPage: json["previous_page"],
    nextPage: json["next_page"],
    currentPage: json["current_page"],
    pageCount: json["page_count"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "total_count": totalCount,
    "per_page": perPage,
    "from_record": fromRecord,
    "to_record": toRecord,
    "previous_page": previousPage,
    "next_page": nextPage,
    "current_page": currentPage,
    "page_count": pageCount,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  Datum({
    required this.id,
    required this.name,
    required this.description,
    required this.inStock,
    required this.qty,
    required this.price,
    required this.newPrice,
    required this.category,
    required this.isFeatured,
    required this.isActive,
    required this.images,
  });

  final String id;
  final String name;
  final String description;
  final bool inStock;
  final int qty;
  final double price;
  final double newPrice;
  final dynamic category;
  final bool isFeatured;
  final bool isActive;
  final String images;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
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
    images: json["image"],
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
    "images": images,
  };
}

class Image {
  Image({
    required this.id,
    required this.image,
  });

  final String id;
  final String image;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    id: json["id"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image": image,
  };
}
