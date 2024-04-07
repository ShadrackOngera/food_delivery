import 'package:flutter/material.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:food_delivery/widgets/primary_text.dart';
import 'package:provider/provider.dart';

class MyCurrentLocation extends StatelessWidget {
  MyCurrentLocation({super.key});

  TextEditingController addressController = TextEditingController();

  void openLocationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: PrimaryText(
          text: 'Your Location',
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
        content: TextField(
          controller: addressController,
          decoration: InputDecoration(
            hintText: 'Enter Address',
          ),
        ),
        actions: [
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: PrimaryText(
              text: 'Cancel',
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
              String newAddress = addressController.text;
              context.read<Restaurant>().updateDeliveryAddress(newAddress);
            },
            child: PrimaryText(
              text: 'Save',
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PrimaryText(
          text: 'Deliver Now',
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
        GestureDetector(
          onTap: () => openLocationSearchBox(context),
          child: Row(
            children: [
              Consumer<Restaurant>(
                builder: (context, restaurant, child) => PrimaryText(
                  text: restaurant.deliveryAddress,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down_rounded,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
