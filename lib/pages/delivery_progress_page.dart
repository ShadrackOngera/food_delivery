import 'package:flutter/material.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:food_delivery/widgets/primary_text.dart';
import 'package:provider/provider.dart';

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
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: PrimaryText(
          text: 'Delivery in Progress...',
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MyReceipt(),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavBar(context),
    );
  }

  Widget _buildBottomNavBar(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(13),
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 84,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).colorScheme.background,
              ),
              child: Icon(
                Icons.person,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PrimaryText(
                text: 'Shadrack Ongera',
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              PrimaryText(
                text: 'Driver',
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ],
          ),
          Spacer(),
          Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).colorScheme.background,
                  ),
                  child: Icon(
                    Icons.message,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              const SizedBox(
                width: 11,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).colorScheme.background,
                  ),
                  child: Icon(
                    Icons.call,
                    color: Colors.green,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          PrimaryText(
            text: 'Thank You for your order!',
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(13),
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).colorScheme.secondary,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Consumer<Restaurant>(
              builder: (context, restaurant, child) => PrimaryText(
                text: restaurant.displayCartReceipt(),
                maxLines: 24,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          PrimaryText(
            text: 'Estimated Delivery Time is 4:10 PM',
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
        ],
      ),
    );
  }
}
