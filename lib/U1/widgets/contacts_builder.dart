import 'package:flutter/material.dart';
import 'package:moviles_demo/U1/models/contact.dart';

class ContactsBuilder extends StatelessWidget {
  const ContactsBuilder({super.key, required this.contacts});

  final List<Person> contacts;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: contacts.length,
      itemBuilder: (context, index) {
        Person contact = contacts[index];
        List<String> fullName = contact.name.split(" ");
        String avatarText = "";

        for (var i = 0; i < 2; i++) {
          avatarText += fullName[i].substring(0, 1);
        }

        return Column(
          children: [
            ListTile(
              onTap: () {},
              leading: CircleAvatar(child: Text(avatarText)),
              title: Text(contact.name),
              subtitle: Text(contact.phone),
            ),
            Divider(color: Colors.grey.shade300),
          ],
        );
      },
    );
  }
}
