import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/primary_text.dart';

class DeliveryProgressPage extends StatefulWidget {
  const DeliveryProgressPage({super.key});

  @override
  State<DeliveryProgressPage> createState() => _DeliveryProgressPageState();
}

class _DeliveryProgressPageState extends State<DeliveryProgressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: PrimaryText(
          text: 'Delivery in Progress...',
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
      ),
    );
  }
}
