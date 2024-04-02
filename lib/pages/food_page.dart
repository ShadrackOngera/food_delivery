import 'package:flutter/material.dart';
import 'package:food_delivery/models/food.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:food_delivery/utils/extension_methods.dart';
import 'package:food_delivery/widgets/primary_button.dart';
import 'package:food_delivery/widgets/primary_text.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};
  FoodPage({
    super.key,
    required this.food,
  }) {
    // selected addons to be false at the beginning
    for (Addon addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  addToCart(Food food, Map<Addon, bool> selectedAddons) {
    Navigator.of(context).pop();

    List<Addon> currentlySelectedAddons = [];
    for (Addon addon in widget.food.availableAddons) {
      if (widget.selectedAddons[addon] == true) {
        currentlySelectedAddons.add(addon);
      }
    }
    context.read<Restaurant>().addToCart(food, currentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  widget.food.imagePath,
                ),
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PrimaryText(
                        text: widget.food.name,
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                      PrimaryText(
                        text: "Ksh ${widget.food.price.toString()}",
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      PrimaryText(
                        text: widget.food.description,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Divider(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      PrimaryText(
                        text: "Add-ons",
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          itemCount: widget.food.availableAddons.length,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            Addon addon = widget.food.availableAddons[index];
                            return CheckboxListTile(
                              // contentPadding: EdgeInsets.zero,
                              title: PrimaryText(
                                text: addon.name.capitalize(),
                                color: Theme.of(context)
                                    .colorScheme
                                    .inversePrimary,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                              subtitle: PrimaryText(
                                text: "Ksh ${addon.price.toString()}",
                                color: Theme.of(context)
                                    .colorScheme
                                    .inversePrimary,
                              ),
                              onChanged: (bool? value) {
                                setState(() {
                                  widget.selectedAddons[addon] = value!;
                                });
                              },
                              value: widget.selectedAddons[addon],
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 20),
                      PrimaryButton(
                        onTap: () =>
                            addToCart(widget.food, widget.selectedAddons),
                        child: PrimaryText(
                          text: 'Add to cart',
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
        SafeArea(
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Theme.of(context).colorScheme.background.withOpacity(.1),
              ),
              child: Icon(
                Icons.arrow_back,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
