import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import '../baseview.dart';
import 'package:guru_shop/src/core/enum/viewstate.dart';
import 'package:guru_shop/src/core/routes/router.dart';
import 'package:guru_shop/src/core/viewmodels/cart_viewmodel.dart';
import 'package:guru_shop/src/shared/components/button.dart';
import 'package:guru_shop/src/shared/components/loading.dart';
import 'package:guru_shop/src/shared/utils/constant.dart';

@RoutePage()
class ShipScreen extends StatelessWidget {
  const ShipScreen({super.key});

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
                  "Ship To",
                  style: textThemes.titleSmall!.copyWith(),
                ),
                actions: [
                  IconButton(onPressed: () => "", icon: const Icon(Icons.add))
                ],
              ),
              body: model.state == ViewState.Busy
                  ? const Loading()
                  : SingleChildScrollView(
                      child: Column(
                        children: [
                          Material(
                            elevation: 1,
                            child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10),
                                height: size.height - 200,
                                child: ListView(children: [
                                  for (final address in model.address)
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 10.0),
                                      child: ShipItem(
                                          address: address,
                                          onSelect: model.onSelect,
                                          selected:
                                              model.isSelected(address["id"]!)),
                                    ),
                                ])),
                          ),
                          Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              width: double.infinity,
                              child: Button(
                                color: colorSchemes.onPrimary,
                                bgColor: colorSchemes.primary,
                                onPressed: () {
                                  router.push(const PaymentRoute());
                                },
                                text: "Next",
                                textSize: 20.00,
                              )),
                        ],
                      ),
                    ),
            ));
  }
}

class ShipItem extends StatelessWidget {
  const ShipItem({
    super.key,
    required this.address,
    this.selected = false,
    required this.onSelect,
  });

  final bool selected;
  final Map<String, String> address;
  final Function(String id)? onSelect;

  @override
  Widget build(BuildContext context) {
    final textThemes = Theme.of(context).textTheme;
    final colorSchemes = Theme.of(context).colorScheme;

    return InkWell(
      onTap: () {
        onSelect!(address["id"]!);
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              width: Constants.borderLarge,
              color: selected == true
                  ? colorSchemes.primary
                  : colorSchemes.secondaryContainer,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(5))),
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(0),
              child: Text(
                address["name"] ?? "",
                style:
                    textThemes.bodyLarge!.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              height: 40,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "3711 Spring Hill Rd undefined Tallahassee, Nevada 52874 United States",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: textThemes.bodyMedium!
                    .copyWith(fontWeight: FontWeight.w300),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "+99 1234567890",
                style: textThemes.bodySmall,
              ),
            ),
            Row(
              children: [
                SizedBox(
                    width: 55,
                    child: Button(
                      color: colorSchemes.onPrimary,
                      bgColor: colorSchemes.primary,
                      text: "Edit",
                      textSize: textThemes.bodyMedium!.fontSize ?? 14,
                    )),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  color: colorSchemes.error,
                  onPressed: () => "",
                  iconSize: 25,
                  icon: const Icon(Icons.delete_outline),
                  padding: const EdgeInsets.all(0),
                  constraints: const BoxConstraints(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
