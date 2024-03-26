import 'package:flutter/material.dart';
import 'package:food_delivery/models/food.dart';
import 'package:food_delivery/widgets/primary_text.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  const FoodPage({
    super.key,
    required this.food,
  });

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            widget.food.imagePath,
          ),
          PrimaryText(
            text: widget.food.name,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          PrimaryText(
            text: widget.food.description,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          const SizedBox(
            height: 15,
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: widget.food.availableAddons.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return CheckboxListTile(
                onChanged: (value) {},
                value: false,
              );
            },
          )
        ],
      ),
    );
  }
}
