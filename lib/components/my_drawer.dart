import 'package:flutter/material.dart';
import 'package:fooddelvery/components/my_drawer_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // app logo
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          //home list tile
          const MyDrawerTile(
            text: 'H O M E',
            icon: Icons.home,
          ),
          const SizedBox(
            height: 20,
          ),
          //settings list tile
          const MyDrawerTile(
            text: 'S E T T I N G S',
            icon: Icons.settings,
          ),
          const Spacer(),
          //logout list tile
          const MyDrawerTile(
            text: 'L O G O U T',
            icon: Icons.logout,
          ),
          const SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
