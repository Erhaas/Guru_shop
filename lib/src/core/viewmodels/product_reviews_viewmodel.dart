import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:guru_shop/src/models/product_model.dart';
import 'package:guru_shop/src/core/enum/viewstate.dart';
import 'package:guru_shop/src/core/viewmodels/base_viewmodel.dart';
import 'package:guru_shop/src/data.dart';

class ProductReviewsViewModel extends BaseViewModel {
  late ProductModel _product = ProductModel(id: "", name: "", image: "");
  bool _addReview = false;
  int _stars = 0;
  List<PlatformFile> _files = [];
  List<File> _base64files = [];

  ProductModel get product => _product;

  bool get addReview => _addReview;

  int get stars => _stars;
  set setStars(int n) {
    _stars = n;
    notifyListeners();
  }

  List<File> get files => _base64files;

  Future addFile(PlatformFile file) async {
    _files.add(file);
    _base64files.add(File(file.path!));
    notifyListeners();
  }

  writeReview() {
    _addReview = !_addReview;
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
