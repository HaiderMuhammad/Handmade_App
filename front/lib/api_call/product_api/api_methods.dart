import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:front/api_call/constants.dart';
import 'package:front/main.dart';
import 'package:front/network_model/all_carts.dart';
import 'package:front/network_model/all_favorite.dart';
import 'package:front/network_model/all_products.dart';
import 'package:front/network_model/profile.dart';
import 'package:front/screens/home_page/home.dart';
import 'package:front/services/local_database/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';



class ApiServices {

  Future getToken() async{
    final SharedPreferences pref = await SharedPreferences.getInstance();
    var token = pref.getString('token');
    return token;
  }
  Future<List<ProductsModel>?> getProducts({String? search}) async {
    try {
      // debugPrint('this is body start');
      var url = Uri.parse('$baseUrl/api/products/all?per_page=12&page=1');
      final finalUri = url.replace(queryParameters: {if(search != null)'search': search});
      var response = await http.get(finalUri);
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
    String? token = await Database.getToken();
    try {
      debugPrint('this is Profile');
      var url = Uri.parse('$baseUrl/api/auth/profile');
      var response = await http.get(url, headers: {
        "Content-Type": "application/json",
        'Authorization': 'Bearer $token',
      });
      var responseBody = jsonDecode(response.body)['data'];
      // debugPrint('${response.statusCode}');
      // debugPrint('$responseBody');

      if (response.statusCode == 200) {
        List<ProfileModel> model =
        responseBody.map<ProfileModel>((profile)=> ProfileModel.fromJson(profile)).toList();
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
    String? token = await Database.getToken();
    try {
      // debugPrint('this is Cart');
      var url = Uri.parse('$baseUrl/api/carts/my');
      var response = await http.get(url, headers: {
        "Content-Type": "application/json",
        'Authorization': 'Bearer $token',
      });
      var responseBody = jsonDecode(response.body);
      // debugPrint('${response.statusCode}');
      // debugPrint('$responseBody');

      if (response.statusCode == 200) {
        List<CartsModel> model =
        responseBody.map<CartsModel>((product)=> CartsModel.fromJson(product)).toList();
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

  Future<List<FavoriteModel>?> getFav() async {
    String? token = await Database.getToken();
    try {
      // debugPrint('this is Favorite');
      var url = Uri.parse('$baseUrl/api/wishlists/all');
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
        // debugPrint('${model.length}');
        return model;
      }
    } catch (e) {
      debugPrint('this is body error');
      debugPrint('this is body $e');

      log(e.toString());
    }
    return null;
  }

  Future addToFav(idItem) async{
    String? token = await Database.getToken();
    var headers = {
      "Content-Type": "application/json",
      'Authorization': 'Bearer $token',
    };
    var request = http.Request('POST', Uri.parse('$baseUrl/api/wishlists/add?product_id=$idItem'));
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      // print(await response.stream.bytesToString());
    }
    else {
      print(response.reasonPhrase);
    }
  }

  Future deleteFav(idItem) async {
    String? token = await Database.getToken();
    var headers = {
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json'
    };
    var request = http.Request('DELETE', Uri.parse('$baseUrl/api/wishlists/remove?product_id=$idItem'));
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    }
    else {
      print(response.reasonPhrase);
    }
  }


  Future addToCart(idItem) async{
    String? token = await Database.getToken();
    var headers = {
      "Content-Type": "application/json",
      'Authorization': 'Bearer $token',
    };
    var request = http.Request('POST', Uri.parse('$baseUrl/api/carts/my'));
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

  Future increaseItem(idItem) async {
    String? token = await Database.getToken();
    http.Response response;
    try {
      var url = Uri.parse('$baseUrl/api/carts/item/change-qty/$idItem');
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

  Future reduceItem(idItem) async {
    String? token = await Database.getToken();
    http.Response response;
    try {
      var url = Uri.parse('$baseUrl/api/carts/item/reduce/$idItem');
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
    return null;
  }

  Future deleteCart(idItem) async {
    http.Response response;
    String? token = await Database.getToken();
    try {
      var url = Uri.parse('$baseUrl/api/carts/item/delete/$idItem');
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