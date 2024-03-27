import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:guru_shop/src/core/viewmodels/login_viewmodel.dart';
import 'package:guru_shop/src/data.dart';
import 'package:guru_shop/src/features/baseview.dart';
import 'package:guru_shop/src/models/cart_model.dart';
import 'package:guru_shop/src/shared/components/cart_item.dart';

@RoutePage()
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    final listCart = [
      new CartModel(product: list_products.first, quantity: 1),
      new CartModel(product: list_products.last, quantity: 1)
    ];
    var size = MediaQuery.of(context).size;
    final double width = size.width;

    return BaseView<LoginViewModel>(
        builder: (BuildContext context, LoginViewModel model, Widget? child) =>
            Scaffold(
                appBar: AppBar(
                  title: Text("Your Cart", style: textTheme.bodyLarge),
                  automaticallyImplyLeading: false,
                  elevation: 0.4,
                  centerTitle: false,
                  actionsIconTheme: IconThemeData(color: colorScheme.secondary),
                ),
                body: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ListView(
                    children: [
                      GridView.count(
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          crossAxisCount: 1,
                          childAspectRatio: 3,
                          mainAxisSpacing: 5,
                          children: [
                            for (CartModel cartProduct in listCart)
                              CartItem(
                                  cartProduct: cartProduct,
                                  increment: () {
                                    cartProduct.setQuantity =
                                        cartProduct.quantity++;
                                  },
                                  decrement: () {
                                    cartProduct.setQuantity =
                                        cartProduct.quantity--;
                                  },
                                  remove: () {})
                          ])
                    ],
                  ),
                )));
  }
}
