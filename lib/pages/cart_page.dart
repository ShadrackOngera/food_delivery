import 'package:flutter/material.dart';
import 'package:food_delivery/models/cart_item.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:food_delivery/widgets/primary_text.dart';
import 'package:food_delivery/widgets/quantity_selector.dart';
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
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: PrimaryText(
              text: 'Cart',
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: userCart.length,
                    itemBuilder: (context, index) {
                      final cartItem = userCart[index];
                      return MyCartTile(
                        cartItem: cartItem,
                      );
                    }),
              ),
            ],
          ),
        );
      },
    );
  }
}

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({
    super.key,
    required this.cartItem,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) => Container(
        child: Column(
          children: [
            Row(
              children: [
                //food image
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    cartItem.food.imagePath,
                    height: 90,
                    width: 90,
                    fit: BoxFit.cover,
                  ),
                ),

                //name and price
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PrimaryText(
                      text: cartItem.food.name,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                    PrimaryText(
                      text: cartItem.food.price.toString(),
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ],
                ),

                //incremenrt and decrement quantity
                quantitySelector(
                  food: cartItem.food,
                  quantity: cartItem.quntity,
                  onDecrement: () {
                    restaurant.removeFromCart(cartItem);
                  },
                  onIncrement: () {
                    restaurant.addToCart(
                        cartItem.food, cartItem.selectedAddons);
                  },
                ),
              ],
            ),
            //addons
          ],
        ),
      ),
    );
  }
}
