

import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:front/network_model/all_carts.dart';
import 'package:front/network_model/all_favorite.dart';
import 'package:front/network_model/all_products.dart';
import 'package:front/network_model/profile.dart';
import 'package:http/http.dart' as http;



class ApiServices {
  String token = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjIiLCJleHAiOjE2Njk3NTkxNjUsInN1YiI6ImFjY2VzcyJ9.hQizTKjBK1H39qf5I8j64tsPLJjbUQkcylqr41TpV4A';
  Future<List<ProductsModel>?> getProducts() async {
    try {
      debugPrint('this is body start');
      var url = Uri.parse('http://192.168.1.105:8000/api/products/all?per_page=12&page=1');
      var response = await http.get(url);
      var responseBody = jsonDecode(response.body)['data'];
      // debugPrint('${response.statusCode}');
      // debugPrint('$responseBody');

      if (response.statusCode == 200) {
        List<ProductsModel> model =
        responseBody.map<ProductsModel>((product)=> ProductsModel.fromJson(product)).toList();
        // debugPrint('${model.length}');
        return model;
      }
    } catch (e) {
      // debugPrint('this is body error');
      // debugPrint('this is body $e');

      log(e.toString());
    }
    return null;
  }

  Future<List<ProfileModel>?> getProfile() async {
    try {
      debugPrint('this is Cart');
      var url = Uri.parse('http://192.168.1.105:8000/api/auth/profile');
      var response = await http.get(url, headers: {
        "Content-Type": "application/json",
        'Authorization': 'Bearer $token',
      });
      var responseBody = jsonDecode(response.body)['data'];
      debugPrint('${response.statusCode}');
      debugPrint('$responseBody');

      if (response.statusCode == 200) {
        List<ProfileModel> model =
        responseBody.map<ProfileModel>((product)=> ProfileModel.fromJson(product)).toList();
        debugPrint('${model.length}');
        return model;
      }
    } catch (e) {
      debugPrint('this is body error');
      debugPrint('this is body $e');

      log(e.toString());
    }
    return null;
  }

  Future<List<CartsModel>?> getCart() async {
    try {
      debugPrint('this is Cart');
      var url = Uri.parse('http://192.168.1.105:8000/api/carts/my');
      var response = await http.get(url, headers: {
        "Content-Type": "application/json",
        'Authorization': 'Bearer $token',
      });
      var responseBody = jsonDecode(response.body);
      debugPrint('${response.statusCode}');
      debugPrint('$responseBody');

      if (response.statusCode == 200) {
        List<CartsModel> model =
        responseBody.map<CartsModel>((product)=> CartsModel.fromJson(product)).toList();
        debugPrint('${model.length}');
        return model;
      }
    } catch (e) {
      debugPrint('this is body error');
      debugPrint('this is body $e');

      log(e.toString());
    }
    return null;
  }

  Future<List<FavoriteModel>?> getFav() async {
    try {
      debugPrint('this is Favorite');
      var url = Uri.parse('http://192.168.1.105:8000/api/wishlists/all');
      var response = await http.get(url, headers: {
        "Content-Type": "application/json",
        'Authorization': 'Bearer $token',
      });
      var responseBody = jsonDecode(response.body);
      debugPrint('${response.statusCode}');
      debugPrint('$responseBody');

      if (response.statusCode == 200) {
        List<FavoriteModel> model =
        responseBody.map<FavoriteModel>((product)=> FavoriteModel.fromJson(product)).toList();
        debugPrint('${model.length}');
        return model;
      }
    } catch (e) {
      debugPrint('this is body error');
      debugPrint('this is body $e');

      log(e.toString());
    }
    return null;
  }

  Future AddToFav(idItem) async{
    var headers = {
      "Content-Type": "application/json",
      'Authorization': 'Bearer $token',
    };
    var request = http.Request('POST', Uri.parse('http://192.168.1.105:8000/api/wishlists/add?product_id=$idItem'));
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    }
    else {
      print(response.reasonPhrase);
    }
  }

  Future DeleteFav(idItem) async {
    var headers = {
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json'
    };
    var request = http.Request('DELETE', Uri.parse('http://192.168.1.105:8000/api/wishlists/remove?product_id=$idItem'));
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    }
    else {
      print(response.reasonPhrase);
    }
  }


  Future AddToCart(idItem) async{
    var headers = {
      "Content-Type": "application/json",
      'Authorization': 'Bearer $token',
    };
    var request = http.Request('POST', Uri.parse('http://192.168.1.105:8000/api/carts/my'));
    request.body = json.encode({
      "product_id": idItem,
      "item_qty": 1
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    }
    else {
      print(response.reasonPhrase);
    }
  }

  Future IncreaseItem(idItem) async {
    http.Response response;
    try {
      var url = Uri.parse('http://192.168.1.105:8000/api/carts/item/change-qty/$idItem');
      response = await http.post(url,
          headers: {
            "Content-Type": "application/json",
            'Authorization': 'Bearer $token',
          }
      );
      getCart();

    } catch (error) {
      print(error.toString());
    }
  }

  Future ReduceItem(idItem) async {
    http.Response response;
    try {
      var url = Uri.parse('http://192.168.1.105:8000/api/carts/item/reduce/$idItem');
      response = await http.post(url,
          headers: {
            "Content-Type": "application/json",
            'Authorization': 'Bearer $token',
          }
      );
      debugPrint("recode${response.statusCode}");

    } catch (error) {
      print(error.toString());
    }
  }

  Future DeleteCart(idItem) async {
    http.Response response;
    try {
      var url = Uri.parse('http://192.168.1.105:8000/api/carts/item/delete/$idItem');
      response = await http.delete(url,
          headers: {
            "Content-Type": "application/json",
            'Authorization': 'Bearer $token',
          }
      );
      getCart();
      debugPrint("recode${response.statusCode}");

    } catch (error) {
      print(error.toString());
    }
  }


}