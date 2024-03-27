import 'product_model.dart';

class CartModel {
  final ProductModel product;
  int quantity;

  CartModel({
    required this.product,
    required this.quantity,
  });

  set setQuantity(int val) {
    if (val <= 1) return;
    quantity = val;
  }
}
