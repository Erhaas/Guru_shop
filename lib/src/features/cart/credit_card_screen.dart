import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:guru_shop/src/core/enum/viewstate.dart';
import 'package:guru_shop/src/core/routes/router.dart';
import 'package:guru_shop/src/core/viewmodels/cart_viewmodel.dart';
import 'package:guru_shop/src/shared/components/button.dart';
import 'package:guru_shop/src/shared/components/carousel.dart';
import 'package:guru_shop/src/shared/components/loading.dart';
import 'package:guru_shop/src/shared/utils/constant.dart';

import '../baseview.dart';

@RoutePage()
class CreditCardScreen extends StatelessWidget {
  const CreditCardScreen({super.key});

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
                  "Credit Card",
                ),
                elevation: 0.4,
                actions: [
                  IconButton(onPressed: () => "", icon: const Icon(Icons.add))
                ],
              ),
              body: model.state == ViewState.Busy
                  ? const Loading()
                  : Column(
                      children: [
                        const Carousel(
                          items: [
                            CreditCard(),
                            CreditCard(),
                            CreditCard(),
                          ],
                        ),
                        const Spacer(),
                        Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 20),
                            width: double.infinity,
                            height: 40,
                            child: Button(
                              onPressed: () {
                                router.push(HomeRoute());
                              },
                              text: "Pay \$766.86",
                              radius: 5.00,
                              textSize: 15.00,
                            )),
                      ],
                    ),
            ));
  }
}

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    final colorSchemes = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
          color: colorSchemes.primary,
          borderRadius:
              BorderRadius.all(Radius.circular(Constants.radiusMedium))),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'Visa',
          style: textTheme.titleMedium!.copyWith(
              color: colorSchemes.onPrimary, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Row(
          children: [
            Text('XXXX',
                style: textTheme.titleMedium!.copyWith(
                    color: colorSchemes.onPrimary,
                    fontWeight: FontWeight.bold)),
            Spacer(),
            Text('XXXX',
                style: textTheme.titleMedium!.copyWith(
                    color: colorSchemes.onPrimary,
                    fontWeight: FontWeight.bold)),
            Spacer(),
            Text('XXXX',
                style: textTheme.titleMedium!.copyWith(
                    color: colorSchemes.onPrimary,
                    fontWeight: FontWeight.bold)),
            Spacer(),
            Text('9875',
                style: textTheme.titleMedium!.copyWith(
                    color: colorSchemes.onPrimary,
                    fontWeight: FontWeight.bold)),
          ],
        ),
        Spacer(),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Card Owner',
                    style: textTheme.bodySmall!.copyWith(
                        color: colorSchemes.onPrimary,
                        fontWeight: FontWeight.w200)),
                Text('Lailyfa Febrina',
                    style: textTheme.bodySmall!.copyWith(
                        color: colorSchemes.onPrimary,
                        fontWeight: FontWeight.w400)),
              ],
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Exp Date',
                    style: textTheme.bodySmall!.copyWith(
                        color: colorSchemes.onPrimary,
                        fontWeight: FontWeight.w200)),
                Text('19/2042',
                    style: textTheme.bodySmall!.copyWith(
                        color: colorSchemes.onPrimary,
                        fontWeight: FontWeight.w400)),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
