import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("Lorenzo Vazquez Ramos"),
            accountEmail: const Text("isc.lorenzovr@gmail.com"),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color.fromARGB(255, 15, 15, 15),
                  const Color.fromARGB(255, 180, 212, 177),
                ],
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 208, 240, 206),
              child: Icon(Icons.person, size: 60, color: Colors.grey.shade600),
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text("Favoritos"),
            leading: Icon(Icons.star),
          ),
          ListTile(
            onTap: () {},
            title: Text("Trabajo"),
            leading: Icon(Icons.work),
          ),
          ListTile(
            onTap: () {},
            title: Text("Escuela"),
            leading: Icon(Icons.school),
          ),
        ],
      ),
    );
  }
}
