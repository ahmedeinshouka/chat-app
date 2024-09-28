import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:provider/provider.dart';
class Contact {
  final String name;
  final String profilePicturePath;

  Contact({required this.name,required this.profilePicturePath, });
}

// contact_state.dart
class ContactState extends ChangeNotifier {
  List<Contact> contacts = [
    // Add your initial contact data here
    Contact(name: 'Abdelrahman Darwish', profilePicturePath: 'assets/img/profile_pictures/Abdelrahman Darwish.jpg'),
    Contact(name: 'Ebrahim Zaki', profilePicturePath: 'assets/img/profile_pictures/Ebrahim Zaki.jpg'),
    Contact(name: 'Ahmed Einshouka', profilePicturePath: 'assets/img/profile_pictures/Ahmed Einshouka.jpg'),
    Contact(name: 'Youssef Badr', profilePicturePath: 'assets/img/profile_pictures/Youssef Badr.jpg'),
  ];

  void addContact(Contact contact) {
    contacts.add(contact);
    notifyListeners(); // Notify listeners about the change
  }
}