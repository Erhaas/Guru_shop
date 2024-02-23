import 'package:guru_shop/src/models/product_model.dart';
import 'package:guru_shop/src/core/viewmodels/base_viewmodel.dart';

class ProductViewModel extends BaseViewModel {
  final List<ProductModel> _favoriteProducts = [];
  final List<ProductModel> _cartProducts = [];

  List<ProductModel> get favoriteProducts => _favoriteProducts;
  List<ProductModel> get cartList => _cartProducts;

  bool inFavorite(ProductModel product) {
    return _favoriteProducts.any((e) => e.id == e.id);
  }

  void addToFavorite(ProductModel product) {
    _favoriteProducts.add(product);
    notifyListeners();
  }

  void removeToFavorite(ProductModel product) {
    _favoriteProducts.removeWhere((e) => e.image == product.image);
    notifyListeners();
  }

  bool inCart(ProductModel product) {
    return _cartProducts.any((e) => e.id == e.id);
  }

  void addToCart(ProductModel product) {
    _cartProducts.add(product);
    notifyListeners();
  }

  void removeToCart(ProductModel product) {
    _cartProducts.removeWhere((e) => e.image == product.image);
    notifyListeners();
  }
}
