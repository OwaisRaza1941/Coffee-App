class ProductModel {
  String imagePath;
  int startRating;
  String productName;
  String productLable;
  double price;

  ProductModel({
    required this.imagePath,
    required this.startRating,
    required this.productName,
    required this.price,
    required this.productLable,
  });
}

List<ProductModel> allCoffeeList = [
  ProductModel(
    imagePath: imagePath,
    startRating: startRating,
    productName: productName,
    price: price,
    productLable: productLable,
  ),
];
