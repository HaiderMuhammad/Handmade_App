class Product {
  final int id;
  final String productName;
  final String oldPrice;
  final String newPrice;
  final String image;

  Product(this.id, this.productName, this.oldPrice, this.newPrice, this.image);

  static List<Product> products = [
    Product(1,'Cotton Tshirt', '23,750 IQD', '14,750 IQD',
        'assets/images/tshirt.jpg'),
    Product(2,'Cotton Tshirt', '23,750 IQD', '14,750 IQD',
        'assets/images/tshirt.jpg'),
    Product(3,'Cotton Tshirt', '23,750 IQD', '14,750 IQD',
        'assets/images/tshirt.jpg'),
  ];
}
