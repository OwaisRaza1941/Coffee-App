import 'package:coffee_app/app/models/product_model.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  RxList<ProductModel> allCartList = <ProductModel>[].obs;

  RxDouble productPrice = 0.00.obs;
  RxDouble deliveryFee = 0.0.obs;
  RxDouble totalPayable = 0.0.obs;

  void addToCart(ProductModel product) {
    if (!allCartList.contains(product)) {
      allCartList.add(product);
    }
    calculateTotalPrice();
  }

  void calculateTotalPrice() {
    double productPriceSum = 0.0;
    double deliveryFeeSum = 0.0;

    for (var p in allCartList) {
      productPriceSum += p.price;
      deliveryFeeSum += p.deliveryFee ?? 0.0;
    }
    productPrice.value = productPriceSum;
    deliveryFee.value = deliveryFeeSum;
    totalPayable.value = productPriceSum + deliveryFeeSum;
  }
}
