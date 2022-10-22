import 'package:front/api_call/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Database {
  String finalToken = '';
  static Future <void> saveToken(String token) async{
    SharedPreferences pref = await SharedPreferences.getInstance();
     // pref.remove('token');
    pref.setString('token', token);
  }

  static Future<String?> getToken() async{
    final SharedPreferences pref = await SharedPreferences.getInstance();
    var token = pref.getString('token');
    print(token);
    return token;
  }

}