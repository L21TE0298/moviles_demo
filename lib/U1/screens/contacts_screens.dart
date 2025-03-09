import 'package:flutter/material.dart';
import 'package:moviles_demo/U1/models/contact.dart';
import 'package:moviles_demo/U1/providers/contacts_provider.dart';
import 'package:moviles_demo/U1/widgets/contacts_builder.dart';
import 'package:moviles_demo/U1/widgets/drawer_widget.dart';
import 'package:provider/provider.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  @override
  Widget build(BuildContext context) {
    final contactProvider = context.watch<ContactProvider>();
    List<Person> contacts = contactProvider.contacts;
    Person temp = Person(
      name: "Lorenzo Vazquez Ramos",
      phone: "2311392885",
      gender: "Masculino",
    );
    for (var i = 0; i < 20; i++) {
      contacts.add(temp);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Contactos"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          Expanded(child: ContactsBuilder(contacts: contacts)),
          Divider(),
          Expanded(child: Text("Centro estatico")),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/newcontact');
        },
        child: Icon(Icons.person_add_alt_1),
      ),
      drawer: DrawerWidget(),
    );
  }
}
