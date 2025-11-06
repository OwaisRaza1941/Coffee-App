class ProductModel {
  String imagePath;
  double startRating;
  String coffeeName;
  String productLable;
  double price;

  ProductModel({
    required this.imagePath,
    required this.startRating,
    required this.coffeeName,
    required this.price,
    required this.productLable,
  });
}

List<ProductModel> allCoffeeList = [
  ProductModel(
    imagePath: 'assets/images/caffe_mocha.png',
    startRating: 4.8,
    coffeeName: 'Caffe Mocha',
    price: 3.53,
    productLable: 'Deep Foam',
  ),
  ProductModel(
    imagePath: 'assets/images/flat_white.png',
    startRating: 4.3,
    coffeeName: 'Flat White',
    price: 3.53,
    productLable: 'Espresso',
  ),
  ProductModel(
    imagePath: 'assets/images/latte.png',
    startRating: 3.8,
    coffeeName: 'Latte',
    price: 3.53,
    productLable: 'Americano',
  ),
  ProductModel(
    imagePath: 'assets/images/cordato.png',
    startRating: 2.9,
    coffeeName: 'Cordato',
    price: 3.53,
    productLable: 'Doppio',
  ),
];
