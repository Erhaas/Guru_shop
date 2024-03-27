import 'package:guru_shop/src/models/cart_model.dart';
import 'package:guru_shop/src/models/product_model.dart';
import 'package:guru_shop/src/core/viewmodels/base_viewmodel.dart';

class ProductViewModel extends BaseViewModel {
  final List<ProductModel> _favoriteProducts = [];
  final List<CartModel> _cartProducts = [];

  List<ProductModel> get favoriteProducts => _favoriteProducts;
  List<CartModel> get cartList => _cartProducts;

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
    return _cartProducts.any((e) => e.product.id == product.id);
  }

  void addToCart({required ProductModel product, int quantity = 1}) {
    if (inCart(product)) return;
    CartModel cartFood = CartModel(product: product, quantity: quantity);
    _cartProducts.add(cartFood);
    notifyListeners();
    notifyListeners();
  }

  void removeToCart(ProductModel product) {
    _cartProducts.removeWhere((e) => e.product.image == product.image);
    notifyListeners();
    notifyListeners();
  }

  void incrementQuantity(int index) {
    CartModel food = _cartProducts[index];
    food.setQuantity = food.quantity += 1;
    _cartProducts[index] = food;
    notifyListeners();
  }

  void decrementQuantity(int index) {
    CartModel food = _cartProducts[index];
    if (food.quantity <= 1) return;
    food.setQuantity = food.quantity -= 1;
    _cartProducts[index] = food;
    notifyListeners();
  }
}
