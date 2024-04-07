import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:guru_shop/src/core/routes/router.dart';
import 'package:guru_shop/src/core/viewmodels/cart_viewmodel.dart';
import 'package:guru_shop/src/core/viewmodels/product_viewmodel.dart';
import 'package:guru_shop/src/data.dart';
import 'package:guru_shop/src/features/baseview.dart';
import 'package:guru_shop/src/models/cart_model.dart';
import 'package:guru_shop/src/shared/components/button.dart';
import 'package:guru_shop/src/shared/components/cart_item.dart';
import 'package:guru_shop/src/shared/components/input.dart';
import 'package:guru_shop/src/shared/utils/constant.dart';
import 'package:provider/provider.dart';

@RoutePage()
class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    final listCart = [
      CartModel(product: list_products.first, quantity: 1),
      CartModel(product: list_products.last, quantity: 1)
    ];
    final _formKey = GlobalKey<FormState>();
    var size = MediaQuery.of(context).size;
    final double height = size.height;
    final router = AutoRouter.of(context);
    final productModel = Provider.of<ProductViewModel>(context);

    return BaseView<CartViewModel>(
        builder: (BuildContext context, CartViewModel model, Widget? child) =>
            Scaffold(
              appBar: AppBar(
                title: Text("Your Cart", style: textTheme.bodyLarge),
                automaticallyImplyLeading: false,
                elevation: 0.4,
                centerTitle: false,
                actionsIconTheme: IconThemeData(color: colorScheme.secondary),
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: Constants.edgeSpacing),
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 6 / 12,
                        child: ListView(
                          children: [
                            SizedBox(height: Constants.edgeSpacing),
                            if (productModel.cartList.isEmpty)
                              Center(
                                child: Text(
                                  "No products",
                                  style: textTheme.bodySmall,
                                ),
                              ),
                            GridView.count(
                                shrinkWrap: true,
                                physics: const ScrollPhysics(),
                                crossAxisCount: 1,
                                childAspectRatio: 3.3,
                                mainAxisSpacing: Constants.spacingY,
                                children: [
                                  for (CartModel cartProduct
                                      in productModel.cartList)
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
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: Constants.edgeSpacing),
                        child: Column(
                          children: [
                            Form(
                                key: _formKey,
                                child: Input(
                                  placeholder: "Enter Cupon Code",
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return '* Your Cupon Is Not Correct ';
                                    }
                                    return null;
                                  },
                                  suffixe: Container(
                                    alignment: Alignment.center,
                                    height: 48,
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: colorScheme.primary,
                                      borderRadius: BorderRadius.horizontal(
                                          right: Radius.circular(
                                              Constants.radiusMedium)),
                                    ),
                                    child: InkWell(
                                        onTap: () {
                                          if (_formKey.currentState!
                                              .validate()) {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              const SnackBar(
                                                  content:
                                                      Text('Processing Data')),
                                            );
                                          }
                                        },
                                        child: Text(
                                          "Apply",
                                          style: textTheme.bodyMedium!.copyWith(
                                              color: colorScheme.onPrimary),
                                        )),
                                  ),
                                )),
                            Container(
                              padding: EdgeInsets.all(Constants.spacingX),
                              margin: EdgeInsets.symmetric(
                                  vertical: Constants.spacingY),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    Constants.radiusMedium),
                                border: Border.all(
                                  color: colorScheme.secondaryContainer,
                                ),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Items (3)",
                                        style: textTheme.bodyMedium!.copyWith(
                                            color: colorScheme.secondary),
                                      ),
                                      const Spacer(),
                                      Text(
                                        "\$398.86",
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 16),
                                  Row(
                                    children: [
                                      Text("Shipping",
                                          style: textTheme.bodyMedium!.copyWith(
                                              color: colorScheme.secondary)),
                                      const Spacer(),
                                      Text(
                                        "\$40.00",
                                      ),
                                    ],
                                  ),
                                  const Divider(height: 25, thickness: .5),
                                  Row(
                                    children: [
                                      Text(
                                        "Total",
                                        style: textTheme.bodyLarge!.copyWith(),
                                      ),
                                      const Spacer(),
                                      Text("\$438.86",
                                          style: textTheme.bodyLarge!.copyWith(
                                              color: colorScheme.primary)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: Button(
                                  text: "Check Out",
                                  bgColor: colorScheme.primary,
                                  color: colorScheme.onPrimary,
                                  onPressed: () {
                                    router.push(ShipRoute());
                                  }),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ));
  }
}
