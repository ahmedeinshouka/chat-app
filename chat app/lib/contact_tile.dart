// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_2/chat_screen.dart';
import 'package:flutter_application_2/contact_state.dart';
import 'package:provider/provider.dart';


class ContactTile extends StatelessWidget {
  final Contact contact;
  final VoidCallback onTap; // Optional callback for tile tap

  const ContactTile({
    required this.contact,
    required this.onTap, 
    required String imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(contact.profilePicturePath),
      ),
      title: Text(contact.name),
      onTap: onTap,
    );
  }
}

