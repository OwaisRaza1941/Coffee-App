import 'package:coffee_app/app/models/product_model.dart';
import 'package:get/get.dart';

class AddToCartController extends GetxController {
  RxList<ProductModel> allCartList = <ProductModel>[].obs;

  void addToCart(ProductModel product) {
    allCartList.contains(product);
    allCartList.add(product);
  }
}
