import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/my_drawer.dart';
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
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        foregroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
        title: PrimaryText(
          text: 'Home',
          color: Theme.of(context).colorScheme.inversePrimary,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(),
    );
  }
}
