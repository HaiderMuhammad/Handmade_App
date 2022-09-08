import 'dart:ui';

class Categories{
  final Color color;
  final String icon;

  Categories(this.color, this.icon);

  static List<Categories> categories = [
    Categories(const Color(0xffEDF7FF), 'assets/images/icon/icons8-jacket-100.png'),
    Categories(const Color(0xffECFCFF), 'assets/images/icon/icons8-plush-100.png'),
    Categories(const Color(0xffFFEDDD), 'assets/images/icon/icons8-scarf-100.png'),
    Categories(const Color(0xffFFEEED), 'assets/images/icon/icons8-earrings-100.png'),
    Categories(const Color(0xffE9FFF8), 'assets/images/icon/icons8-categorize-100.png'),
  ];
}