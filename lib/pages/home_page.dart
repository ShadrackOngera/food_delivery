import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/my_current_location.dart';
import 'package:food_delivery/widgets/my_drawer.dart';
import 'package:food_delivery/widgets/my_sliver_appbar.dart';
import 'package:food_delivery/widgets/primary_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppbar(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  color: Theme.of(context).colorScheme.secondary,
                ),
                MyCurrentLocation(),
              ],
            ),
            titleWidget: PrimaryText(
              text: 'Title',
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
        ],
        body: Container(
          color: Colors.purple,
        ),
      ),
    );
  }
}
