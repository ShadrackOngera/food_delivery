import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/my_current_location.dart';
import 'package:food_delivery/widgets/my_description.dart';
import 'package:food_delivery/widgets/my_drawer.dart';
import 'package:food_delivery/widgets/my_sliver_appbar.dart';
import 'package:food_delivery/widgets/my_tab_bar.dart';
import 'package:food_delivery/widgets/primary_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppbar(
            child: Padding(
              padding: const EdgeInsets.only(left: 13.0, right: 13, bottom: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  MyCurrentLocation(),
                  MyDescription(),
                ],
              ),
            ),
            titleWidget: MyTabBar(
              tabController: _tabController,
            ),
          ),
        ],
        body: TabBarView(
          controller: _tabController,
          children: [
            PrimaryText(
              text: 'Food',
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            PrimaryText(
              text: 'Items',
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            PrimaryText(
              text: 'Home',
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ],
        ),
      ),
    );
  }
}
