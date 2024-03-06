import 'package:get_it/get_it.dart';
import 'core/viewmodels/home_viewmodel.dart';
import 'core/viewmodels/login_viewmodel.dart';
import 'core/viewmodels/product_details_viewmodel.dart';
import 'core/viewmodels/product_viewmodel.dart';
import 'core/viewmodels/product_reviews_viewmodel.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerFactory<HomeViewModel>(() => HomeViewModel());
  locator.registerFactory<LoginViewModel>(() => LoginViewModel());
  locator.registerFactory<ProductViewModel>(() => ProductViewModel());
  locator.registerFactory<ProductDetailsViewModel>(() => ProductDetailsViewModel());
  locator.registerFactory<ProductReviewsViewModel>(() => ProductReviewsViewModel());
}
