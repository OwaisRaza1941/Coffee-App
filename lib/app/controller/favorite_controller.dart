import 'package:coffee_app/app/models/product_model.dart';
import 'package:get/get.dart';

class FavoriteController extends GetxController {
  RxList<ProductModel> allFavList = <ProductModel>[].obs;

  void toggleFavorite(ProductModel product) {
    // Toggle
    product.isFavorite = !product.isFavorite;

    // Add or remove
    if (product.isFavorite) {
      allFavList.add(product);
    } else {
      allFavList.remove(product);
    }
    update(); // optional for GetBuilder users
  }
}
