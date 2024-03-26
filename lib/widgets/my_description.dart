import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/primary_text.dart';

class MyDescription extends StatelessWidget {
  const MyDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                text: 'Delivery Time',
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
