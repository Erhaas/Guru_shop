import 'package:guru_shop/gen/assets.gen.dart';
import 'package:guru_shop/src/models/product_model.dart';

import 'models/category_model.dart';

final List<CategoryModel> listCategories = [
  CategoryModel(
      id: "man", label: "Man Shirt", image: Assets.icons.categories.shirt.path),
  CategoryModel(
      id: "dress", label: "Dress", image: Assets.icons.categories.dress.path),
  CategoryModel(
      id: "man_work",
      label: "Man Work Equipment",
      image: Assets.icons.categories.manUnderwear.path),
  CategoryModel(
      id: "woman_bag",
      label: "Woman Bag",
      image: Assets.icons.categories.womanBag.path),
  CategoryModel(
      id: "man_shoes",
      label: "Man Shoes",
      image: Assets.icons.categories.manShoes.path),
];

List<ProductModel> fsProducts = [
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

List<ProductModel> msProducts = [
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
