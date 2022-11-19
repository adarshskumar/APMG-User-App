import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildHeader(context),
            buildMenuItems(context),
          ],
        ),
      ),
    );
  }
}

Widget buildHeader(BuildContext context) => Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
      ),
    );

Widget buildMenuItems(BuildContext context) => Container(
      padding: const EdgeInsets.all(24),
      child: Wrap(
        runSpacing: 6,
        children: [
          ListTile(
            leading: const Icon(Icons.star),
            title: const Text(
              'Show',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Poppins',
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.favorite_border_outlined),
            title: const Text(
              'Favorites',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Poppins',
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.info_outline_rounded),
            title: const Text(
              'About',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Poppins',
              ),
            ),
            onTap: () {},
          ),
          const Divider(
            color: Colors.black54,
          ),
          ListTile(
            leading: const Icon(Icons.logout_outlined),
            title: const Text(
              'Logout',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Poppins',
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
