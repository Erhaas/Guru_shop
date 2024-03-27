import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:guru_shop/src/core/enum/viewstate.dart';
import 'package:guru_shop/src/core/routes/router.dart';
import 'package:guru_shop/src/core/viewmodels/cart_viewmodel.dart';
import 'package:guru_shop/src/shared/components/list_item.dart';
import 'package:guru_shop/src/shared/components/loading.dart';

import '../baseview.dart';

@RoutePage()
class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final router = AutoRouter.of(context);
    var size = MediaQuery.of(context).size;
    final textThemes = Theme.of(context).textTheme;
    final colorSchemes = Theme.of(context).colorScheme;

    return BaseView<CartViewModel>(
        onModelReady: (model) => model.getAddress(),
        builder: (BuildContext context, CartViewModel model, Widget? child) =>
            Scaffold(
              appBar: AppBar(
                title: Text(
                  "Payment",
                  style: textThemes.titleSmall,
                ),
                elevation: 0.4,
                actions: [
                  IconButton(onPressed: () => "", icon: const Icon(Icons.add))
                ],
              ),
              body: model.state == ViewState.Busy
                  ? const Loading()
                  : SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 00.0),
                        child: Column(
                          children: [
                            ListItem(
                              horizontalPadding: 10,
                              title: "Credit Card",
                              leading: Icon(
                                Icons.credit_card,
                                color: colorSchemes.primary,
                              ),
                              onTap: () =>
                                  {router.push(const CreditCardRoute())},
                              trailing: const SizedBox(),
                            ),
                            ListItem(
                              horizontalPadding: 10,
                              title: "PayPal",
                              onTap: () => {},
                              leading: Icon(Icons.paypal,
                                  color: colorSchemes.primary),
                              trailing: const SizedBox(),
                            ),
                            ListItem(
                              horizontalPadding: 10,
                              title: "Bank",
                              onTap: () => {},
                              leading: Icon(Icons.account_balance,
                                  color: colorSchemes.primary),
                              trailing: const SizedBox(),
                            ),
                          ],
                        ),
                      ),
                    ),
            ));
  }
}
