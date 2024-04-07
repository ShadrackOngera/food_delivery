import 'package:flutter/material.dart';
import 'package:food_delivery/pages/settings_page.dart';
import 'package:food_delivery/services/auth/auth_service.dart';
import 'package:food_delivery/widgets/primary_text.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  logout() async {
    final _authService = AuthService();
    await _authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Icon(
                Icons.dinner_dining_rounded,
                size: 72,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
            MyDrawerTile(
              iconData: Icons.home,
              text: 'H O M E',
              onTap: () {
                Navigator.pop(context);
              },
            ),
            MyDrawerTile(
              iconData: Icons.settings,
              text: 'S E T T I N G S',
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsPage(),
                  ),
                );
              },
            ),
            Spacer(),
            MyDrawerTile(
              iconData: Icons.logout,
              text: 'L O G O U T',
              onTap: logout,
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}

class MyDrawerTile extends StatelessWidget {
  final String text;
  final Function() onTap;
  final IconData iconData;
  const MyDrawerTile({
    super.key,
    required this.text,
    required this.iconData,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        iconData,
        color: Theme.of(context).colorScheme.inversePrimary,
      ),
      title: PrimaryText(
        text: text,
        color: Theme.of(context).colorScheme.inversePrimary,
      ),
    );
  }
}
