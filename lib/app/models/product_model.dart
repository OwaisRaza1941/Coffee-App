class ProductModel {
  String imagePath;
  double startRating;
  String coffeeName;
  String productLable;
  double price;
  String? description;

  ProductModel({
    required this.imagePath,
    required this.startRating,
    required this.coffeeName,
    required this.price,
    required this.productLable,
    this.description,
  });
}

List<ProductModel> allCoffeeList = [
  ProductModel(
    imagePath: 'assets/images/caffe_mocha.png',
    startRating: 4.8,
    coffeeName: 'Caffe Mocha',
    price: 5.54,
    productLable: 'Deep Foam',
    description:
        'Coffee is a beverage brewed from roasted, ground coffee beans. Darkly colored, bitter, and slightly acidic, coffee has a stimulating effect on humans, primarily due to its caffeine content, but decaffeinated coffee is also commercially available.',
  ),
  ProductModel(
    imagePath: 'assets/images/flat_white.png',
    startRating: 4.3,
    coffeeName: 'Flat White',
    price: 4.54,
    productLable: 'Espresso',
    description:
        'Coffee is a beverage brewed from roasted, ground coffee beans. Darkly colored, bitter, and slightly acidic, coffee has a stimulating effect on humans, primarily due to its caffeine content, but decaffeinated coffee is also commercially available.coffee has a stimulating effect on humans, primarily due to its caffeine content, but decaffeinated coffee is also commercially available.',
  ),
  ProductModel(
    imagePath: 'assets/images/latte.png',
    startRating: 3.8,
    coffeeName: 'Latte',
    price: 3.53,
    productLable: 'Americano',
    description:
        'Coffee is a beverage brewed from roasted, ground coffee beans. Darkly colored, bitter, and slightly acidic, coffee has a stimulating effect on humans, primarily due to its caffeine content, but decaffeinated coffee is also commercially available.',
  ),
  ProductModel(
    imagePath: 'assets/images/cordato.png',
    startRating: 2.9,
    coffeeName: 'Cordato',
    price: 2.50,
    productLable: 'Doppio',
    description:
        'Coffee is a beverage brewed from roasted, ground coffee beans. Darkly colored, bitter, and slightly acidic, coffee has a stimulating effect on humans, primarily due to its caffeine content, but decaffeinated coffee is also commercially available.',
  ),
];
