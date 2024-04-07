import 'package:flutter/material.dart';
import 'package:guru_shop/src/models/cart_model.dart';
import 'package:guru_shop/src/shared/utils/constant.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    required this.cartProduct,
    required this.increment,
    required this.decrement,
    required this.remove,
  });

  final CartModel cartProduct;
  final Function()? increment;
  final Function()? decrement;
  final Function()? remove;

  @override
  Widget build(BuildContext context) {
    final textThemes = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Constants.radiusMedium),
        border: Border.all(
          color: colorScheme.secondaryContainer,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.circular(Constants.radiusMedium)),
                image: DecorationImage(
                    image: AssetImage(cartProduct.product.image),
                    fit: BoxFit.fill)),
            margin: const EdgeInsets.only(right: 10),
            width: 75,
            height: 75,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      constraints: const BoxConstraints(maxWidth: 120),
                      child: Text(
                        cartProduct.product.name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: textThemes.bodyLarge!.copyWith(
                          height: 1.1,
                          letterSpacing: .1,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30,
                            height: 30,
                            child: IconButton(
                                color: colorScheme.error,
                                onPressed: remove,
                                icon: const Icon(Icons.favorite),
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints()),
                          ),
                          SizedBox(
                            width: 30,
                            height: 30,
                            child: IconButton(
                              color: colorScheme.secondary,
                              onPressed: remove,
                              icon: const Icon(
                                Icons.delete_outline,
                              ),
                              padding: EdgeInsets.zero,
                              constraints: const BoxConstraints(),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      cartProduct.product.price,
                      style: textThemes.bodyLarge!.copyWith(
                          fontWeight: FontWeight.w600,
                          color: colorScheme.primary),
                    ),
                    Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            width: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.horizontal(
                                  left:
                                      Radius.circular(Constants.radiusMedium)),
                              border: Border.all(
                                color: colorScheme.secondaryContainer,
                              ),
                            ),
                            child: InkWell(
                              onTap: decrement,
                              child: const Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(
                                  Icons.remove,
                                  size: 20,
                                ),
                              ),
                            )),
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: colorScheme.secondaryContainer,
                            border: Border.all(
                              color: colorScheme.secondaryContainer,
                            ),
                          ),
                          height: 32,
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            '${cartProduct.quantity}',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: colorScheme.secondary),
                          ),
                        ),
                        Container(
                            width: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.horizontal(
                                  right:
                                      Radius.circular(Constants.radiusMedium)),
                              border: Border.all(
                                color: colorScheme.secondaryContainer,
                              ),
                            ),
                            child: InkWell(
                              onTap: increment,
                              child: const Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(
                                  Icons.add,
                                  size: 20,
                                ),
                              ),
                            ))
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          // const Spacer(),
        ],
      ),
    );
  }
}
