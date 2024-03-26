import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/primary_text.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;
  const MyTabBar({
    super.key,
    required this.tabController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabController,
        tabs: [
          Tab(
            text: 'Food',
          ),
          Tab(
            text: 'items',
          ),
          Tab(
            text: 'home',
          ),
        ],
      ),
    );
  }
}
