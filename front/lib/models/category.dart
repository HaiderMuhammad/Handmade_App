import 'dart:ui';

class Categories{
  final Color color;
  final String icon;

  Categories(this.color, this.icon);

  static List<Categories> categories = [
    Categories(const Color(0xffEDF7FF), 'assets/images/icon/jackets.png'),
    Categories(const Color(0xffECFCFF), 'assets/images/icon/toys.png'),
    Categories(const Color(0xffFFEDDD), 'assets/images/icon/scarf.png'),
    Categories(const Color(0xffFFEEED), 'assets/images/icon/earrings.png'),
    Categories(const Color(0xffE9FFF8), 'assets/images/icon/all-categorizes.png'),
  ];
}