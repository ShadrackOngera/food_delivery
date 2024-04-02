import 'package:flutter/material.dart';
import 'package:food_delivery/models/cart_item.dart';
import 'package:food_delivery/models/food.dart';
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
            actions: [
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: PrimaryText(
                        text: 'Are you sure you want to clear cart?',
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: PrimaryText(
                            text: 'Cancel',
                            color: Theme.of(context).colorScheme.inversePrimary,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            restaurant.clearCart();
                          },
                          child: PrimaryText(
                            text: 'Yes',
                            color: Theme.of(context).colorScheme.inversePrimary,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                icon: Icon(
                  Icons.delete,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              )
            ],
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
        margin: EdgeInsets.symmetric(horizontal: 13, vertical: 8),
        padding: EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(10),
        ),
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
                const SizedBox(
                  width: 20,
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
                Spacer(),

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
            SizedBox(
              height: cartItem.selectedAddons.isEmpty ? 0 : 60,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 7,
                  bottom: 9,
                  right: 7,
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: cartItem.selectedAddons
                      .map(
                        (addon) => Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: FilterChip(
                            label: Row(
                              children: [
                                PrimaryText(
                                  text: addon.name,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary,
                                ),
                                PrimaryText(
                                  text: "Ksh${addon.price}",
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary,
                                ),
                              ],
                            ),
                            onSelected: (value) {},
                            shape: StadiumBorder(
                              side: BorderSide(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                            backgroundColor:
                                Theme.of(context).colorScheme.secondary,
                            labelStyle: TextStyle(
                              color:
                                  Theme.of(context).colorScheme.inversePrimary,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
