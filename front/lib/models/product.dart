class Product{
  final String productName;
  final String oldPrice;
  final String newPrice;
  final String image;

  Product(this.productName, this.oldPrice, this.newPrice, this.image);
  
  static List<Product> products = [
    Product('Cotton Tshirt', '23,750 IQD', '14,750 IQD','assets/images/tshirt.jpg'),
    Product('Cotton Tshirt', '23,750 IQD', '14,750 IQD','assets/images/tshirt.jpg'),
    Product('Cotton Tshirt', '23,750 IQD', '14,750 IQD','assets/images/tshirt.jpg'),
  ];
}