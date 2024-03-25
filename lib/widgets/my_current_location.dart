import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/primary_text.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: PrimaryText(
          text: 'Your Location',
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
        content: TextField(
          decoration: InputDecoration(
            hintText: 'Search Address',
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
            onPressed: () => Navigator.pop(context),
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
              PrimaryText(
                text: 'Nchiru Meru University',
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              Icon(
                Icons.keyboard_arrow_down_rounded,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
