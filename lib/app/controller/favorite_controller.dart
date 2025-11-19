import 'package:coffee_app/app/models/product_model.dart';
import 'package:get/get.dart';

class FavoriteController extends GetxController {
  RxList<ProductModel> allFavList = <ProductModel>[].obs;

  void toggleFavorite(ProductModel product) {
    // Toggle
    product.isFavorite.value = !product.isFavorite.value;

    // Add or remove
    if (product.isFavorite.value) {
      allFavList.add(product);
    } else {
      allFavList.remove(product);
    }
  }
}
