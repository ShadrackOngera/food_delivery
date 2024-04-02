import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/primary_text.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: PrimaryText(
          text: 'Checkout',
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
      ),
    );
  }
}
