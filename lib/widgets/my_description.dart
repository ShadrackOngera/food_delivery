import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/primary_text.dart';

class MyDescription extends StatelessWidget {
  const MyDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
      child: Row(
        children: [
          Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PrimaryText(
                text: 'Ksh 200',
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              PrimaryText(
                text: 'Delivery Fee',
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ],
          ),
          Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PrimaryText(
                text: '15 - 30 Mins',
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              PrimaryText(
                text: 'Delivery Fee',
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
