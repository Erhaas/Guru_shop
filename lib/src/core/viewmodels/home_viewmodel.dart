import 'package:guru_shop/src/core/viewmodels/base_viewmodel.dart';
import 'package:guru_shop/src/core/enum/viewstate.dart';
import 'package:guru_shop/src/data.dart';
import 'package:guru_shop/src/models/category_model.dart';
import 'package:guru_shop/src/models/product_model.dart';

class HomeViewModel extends BaseViewModel {
  List<ProductModel> _products = [];
  final List<CategoryModel> _categories = listCategories;

  final Map<String, List<ProductModel>?> _productColleciton = {};

  List<ProductModel> get products => _products;
  List<CategoryModel> get categories => _categories;

  List<ProductModel> productList(String category) {
    // if (category == "mega_sale") {
    //   _productColleciton[category] = msProducts;
    // } else if (category == "flash_sale") {
    //   _productColleciton[category] = fsProducts;
    // } else {
    //   _productColleciton[category] = _products;
    // }

    if (_productColleciton[category] == null) {
      return [];
    } else {
      return _productColleciton[category]!;
    }
  }

  Future getProductList(String categ) {
    setState(ViewState.Busy);
    return Future.delayed(
        const Duration(milliseconds: 3000),
        () => {
              if (_productColleciton[categ] == null)
                {
                  if (categ == "mega_sale")
                    {_productColleciton[categ] = msProducts}
                  else if (categ == "flash_sale")
                    {_productColleciton[categ] = fsProducts}
                  else
                    {_productColleciton[categ] = list_products},
                },
              setState(ViewState.Idle),
              notifyListeners()
            });
  }

  Future getProduct() async {
    setState(ViewState.Busy);
    Future.delayed(
        const Duration(milliseconds: 3000),
        () => {
              _products = list_products,
              setState(ViewState.Idle),
              notifyListeners()
            });
  }
}
