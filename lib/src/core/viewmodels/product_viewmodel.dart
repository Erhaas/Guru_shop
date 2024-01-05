import 'package:guru_shop/src/models/product_model.dart';
import 'package:guru_shop/src/core/viewmodels/base_viewmodel.dart';

class ProductViewModel extends BaseViewModel {
  List<ProductModel> _favoriteProducts = [];

  List<ProductModel> get favoriteProducts => _favoriteProducts;

  void addToFavorite(ProductModel product) {
    _favoriteProducts.add(product);
    notifyListeners();
  }

  void removeToFavorite(ProductModel product) {
    _favoriteProducts.removeWhere((e) => e.image == product.image);
    notifyListeners();
  }
}
