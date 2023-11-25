import 'package:guru_shop/gen/assets.gen.dart';
import 'package:guru_shop/src/models/product_model.dart';

List<Map<String, dynamic>> list_categories = [
  {"label": "Man Shirt", "image": Assets.icons.categories.shirt.path},
  {"label": "Dress", "image": Assets.icons.categories.dress.path},
  {
    "label": "Man Work Equipment",
    "image": Assets.icons.categories.manUnderwear.path
  },
  {"label": "Woman Bag", "image": Assets.icons.categories.womanBag.path},
  {"label": "Man Shoes", "image": Assets.icons.categories.manShoes.path},
];

List<ProductModel> fs_products = [
  ProductModel(
      name: 'FS - Nike Air Max 270 React', image: Assets.images.shoe1.path),
  ProductModel(name: 'FS - QUILTED MAXI CROS', image: Assets.images.bag1.path),
  ProductModel(
      name: 'FS - Nike Air Max 270 React', image: Assets.images.shoe3.path),
  ProductModel(
      name: 'FS - Nike Air Max 270 React', image: Assets.images.bag2.path),
  ProductModel(
      name: 'FS - Nike Air Max 270 React', image: Assets.images.shoe4.path),
];

List<ProductModel> ms_products = [
  ProductModel(
      name: 'MS - Nike Air Max 270 React', image: Assets.images.shoe2.path),
  ProductModel(name: 'FS - QUILTED MAXI CROS', image: Assets.images.shoe3.path),
  ProductModel(
      name: 'MS - Nike Air Max 270 React', image: Assets.images.bag4.path),
  ProductModel(
      name: 'MS - Nike Air Max 270 React', image: Assets.images.bag2.path),
  ProductModel(
      name: 'MS - Nike Air Max 270 React', image: Assets.images.shoe4.path),
];

List<ProductModel> list_products = [
  ProductModel(
      name: 'Nike Air Max 270 React ENG', image: Assets.images.shoe1.path),
  ProductModel(
      name: 'Nike Air Max 270 React ENG', image: Assets.images.shoe2.path),
  ProductModel(
      name: 'Nike Air Max 270 React ENG', image: Assets.images.shoe3.path),
  ProductModel(
      name: 'Nike Air Zoom Pegasus 36 Miami', image: Assets.images.shoe4.path),
];
