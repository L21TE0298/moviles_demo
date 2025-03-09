import 'package:flutter/material.dart';
import 'package:moviles_demo/U1/models/contact.dart';

class ContactProvider extends ChangeNotifier {
  final List<Person> _contacts = [];

  List<Person> get contacts => _contacts;

  void addContact(Person person) {
    _contacts.add(person);
    notifyListeners();
  }
}
