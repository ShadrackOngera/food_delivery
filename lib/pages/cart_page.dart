import 'package:flutter/material.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:food_delivery/widgets/primary_text.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        //cart
        final userCart = restaurant.cart;

        //scaffpld UI
        return Scaffold(
          appBar: AppBar(
            title: PrimaryText(
              text: 'Cart',
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
        );
      },
    );
  }
}
