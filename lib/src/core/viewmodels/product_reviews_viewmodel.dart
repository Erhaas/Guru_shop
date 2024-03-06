import 'package:guru_shop/src/models/product_model.dart';
import 'package:guru_shop/src/core/enum/viewstate.dart';
import 'package:guru_shop/src/core/viewmodels/base_viewmodel.dart';
import 'package:guru_shop/src/data.dart';

class ProductReviewsViewModel extends BaseViewModel {
  late ProductModel _product = new ProductModel(id: "", name: "", image: "");
  bool _addReview = false;

  ProductModel get product => _product;

  bool get addReview => _addReview;

  writeReview() {
    _addReview = true;
    notifyListeners();
  }

  Future retrieveProduct(String id) async {
    setState(ViewState.Busy);
    Future.delayed(
        const Duration(milliseconds: 1000),
        () => {
              _product = list_products.firstWhere((e) => e.id == id),
              setState(ViewState.Idle),
              notifyListeners()
            });
  }
}
