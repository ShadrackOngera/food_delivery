import 'package:flutter/material.dart';

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
          onPressed: () {},
          icon: Icon(
            Icons.shopping_cart,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
        ),
      ],
      backgroundColor: Theme.of(context).colorScheme.background,
      title: titleWidget,
      flexibleSpace: FlexibleSpaceBar(
        background: child,
      ),
    );
  }
}
