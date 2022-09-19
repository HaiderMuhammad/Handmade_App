import 'package:get/get_rx/src/rx_types/rx_types.dart';

class Favorite{
  final String name;
  final String price;
  final String image;

  Favorite(this.name, this.price, this.image);
  
  static RxList<Favorite> favList = <Favorite> [
    Favorite('Cotton T-shirt', '24,99', 'assets/images/tshirt.jpg'),
    Favorite('Cotton T-shirt', '24,99', 'assets/images/tshirt.jpg')
  ].obs;

  static add(String name, String price, String image){
    favList.add(Favorite(name, price, image));
  }
}