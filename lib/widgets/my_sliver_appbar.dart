import 'package:flutter/material.dart';
import 'package:food_delivery/pages/cart_page.dart';
import 'package:food_delivery/widgets/primary_text.dart';

class MySliverAppbar extends StatelessWidget {
  final Widget child;
  final Widget titleWidget;
  const MySliverAppbar({
    super.key,
    required this.child,
    required this.titleWidget,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 300,
      collapsedHeight: 120,
      pinned: true,
      floating: false,
      actions: [
        IconButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CartPage(),
            ),
          ),
          icon: Icon(
            Icons.shopping_cart,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
        ),
      ],
      backgroundColor: Theme.of(context).colorScheme.background,
      centerTitle: true,
      title: PrimaryText(
        text: 'Sunset Dinner',
        color: Theme.of(context).colorScheme.inversePrimary,
        fontSize: 18,
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: child,
        title: titleWidget,
        centerTitle: true,
        titlePadding: const EdgeInsets.symmetric(horizontal: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}
